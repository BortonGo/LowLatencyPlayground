# Заметки По Профилированию

## Контекст

В этой задаче проверялся batch validation experiment, а не live matching path.
Идея: взять большой batch orders, заранее проверить корректность полей и сравнить
три варианта:

| Вариант | Что проверяет |
|---|---|
| `SCALAR AOS` | `std::vector<llp::Order>` с отключенными vectorize/interleave/unroll. |
| `SCALAR SOA` | `OrdersSoA` с отключенными vectorize/interleave/unroll. |
| `AUTO SOA` | Тот же `OrdersSoA`, но без pragma, компилятор сам решает по vectorization. |

Validation rule:

```text
id != 0
quantity != 0
500 <= price <= 1500
side == Buy или side == Sell
```

Checksum считается только по invalid orders:

```cpp
checksum += id + index;
```

Это важно: checksum привязан к invalid path и к позиции элемента, поэтому
compiler не может просто выкинуть проход.

## Команды

Сборка:

```bash
cmake --build cmake-build-release --target benchmark_simd_batch_validation
```

Запуск:

```bash
./cmake-build-release/benchmark_simd_batch_validation
```

Проверка compiler vectorization remarks:

```bash
clang++ -std=c++23 -O2 -I include \
  -Rpass=loop-vectorize \
  -Rpass-missed=loop-vectorize \
  -Rpass-analysis=loop-vectorize \
  -c benchmarks/stage_09_language_level_optimization/benchmark_simd_batch_validation.cpp \
  -o /tmp/benchmark_simd_batch_validation.o
```

## Исправления По Ходу Задачи

Сначала `valid_percent` вводил в заблуждение: valid orders генерировались с
ценой `500 + (i % 1500)`, а validation принимал только `500..1500`. Из-за этого
часть "valid" orders становилась invalid по price range.

Финальная генерация:

```cpp
order.price = 500 + (i % 1000);
```

При range `500..1500` такая цена всегда попадает в допустимый диапазон. После
этого `invalid_count` стал соответствовать названию batch:

```text
99% valid -> 10'000 invalid
90% valid -> 100'000 invalid
50% valid -> 500'000 invalid
```

Также было важно добавить проверку `quantity != 0` и сравнивать не только
`checksum`, но и `invalid_count` между AoS/SoA implementations.

## Контрольный Прогон

Один локальный прогон:

| Distribution | SCALAR AOS | SCALAR SOA | AUTO SOA | invalid_count |
|---|---:|---:|---:|---:|
| 99% valid | 596us | 600us | 580us | 10'000 |
| 90% valid | 1024us | 989us | 999us | 100'000 |
| 50% valid | 2854us | 3208us | 3071us | 500'000 |

Checksums совпали между всеми реализациями:

| Distribution | checksum |
|---|---:|
| 99% valid | 9'996'378'392 |
| 90% valid | 97'517'609'594 |
| 50% valid | 437'046'872'273 |

## Compiler Remarks

Для `SCALAR AOS`:

```text
benchmark_simd_batch_validation.cpp:85: loop not vectorized:
vectorization and interleaving are explicitly disabled
```

Для `SCALAR SOA`:

```text
benchmark_simd_batch_validation.cpp:101: loop not vectorized:
vectorization and interleaving are explicitly disabled
```

Для `AUTO SOA`:

```text
benchmark_simd_batch_validation.cpp:114: the cost-model indicates that vectorization is not beneficial
benchmark_simd_batch_validation.cpp:114: the cost-model indicates that interleaving is not beneficial
```

То есть в финальной версии compiler не стал vectorize-ить `AUTO SOA`.
Это честный результат: задача требовала проверить, а не заставить SIMD победить.

## Вывод

SoA сам по себе не дал стабильного выигрыша в этом workload. На 90% valid он
чуть лучше AoS в одном прогоне, на 50% valid хуже. Основная причина: validation
читает сразу несколько массивов (`ids`, `prices`, `quantities`, `sides`) и имеет
condition с invalid branch. Это уже не простой `prices[i] > threshold`, который
compiler легко vectorize-ит.

Главный вывод:

- batch validation можно вынести как отдельный experiment;
- корректность AoS/SoA/auto проверяется одинаковым `ValidationResult`;
- auto-vectorization нужно подтверждать через `-Rpass`, а не предполагать;
- для такого validation loop compiler решил, что vectorization невыгодна;
- это не аргумент переносить live matching path на SIMD.

Задачу считаю засчитанной: benchmark построен правильно, ошибки генерации и
checksum исправлены, результат объяснен.
