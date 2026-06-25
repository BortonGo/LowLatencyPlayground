# Заметки По Профилированию

## Контекст

Задача проверяет маленький SIMD-friendly workload:

```cpp
count += prices[i] > threshold;
```

Работаем только с `std::vector<std::uint64_t> prices`, без matching engine. Цель
была сравнить три варианта:

| Вариант | Что делает |
|---|---|
| `SCALAR` | Обычный scalar loop с отключенными vectorize/interleave/unroll. |
| `AUTO` | Такой же loop, но компилятор может сам vectorize/unroll. |
| `MANUAL NEON` | Ручной NEON через `uint64x2_t`, `vld1q_u64`, `vcgtq_u64`, `vaddq_u64`. |

Окружение контрольного прогона:

```text
Apple clang version 21.0.0 (clang-2100.1.1.101)
Target: arm64-apple-darwin25.5.0
Architecture: arm64
```

## Команды

Сборка обычного release target:

```bash
cmake --build cmake-build-release --target benchmark_manual_simd_price_filter
```

Запуск:

```bash
./cmake-build-release/benchmark_manual_simd_price_filter
```

Сохранение assembly для проверки `-O2`:

```bash
clang++ -std=c++23 -O2 -I include \
  -S benchmarks/stage_09_language_level_optimization/benchmark_manual_simd_price_filter.cpp \
  -o notes/stage_09_language_level_optimization/topic_03_simd_and_data_layout/task_03_manual_simd_price_filter/benchmark_manual_simd_price_filter_O2.s
```

Сохранение assembly для `-O3`:

```bash
clang++ -std=c++23 -O3 -I include \
  -S benchmarks/stage_09_language_level_optimization/benchmark_manual_simd_price_filter.cpp \
  -o notes/stage_09_language_level_optimization/topic_03_simd_and_data_layout/task_03_manual_simd_price_filter/benchmark_manual_simd_price_filter_O3.s
```

Поиск интересных мест в assembly:

```bash
grep -n "count_prices_above_scalar\\|count_prices_above_auto\\|count_prices_above_manual_neon\\|cmhi\\.2d\\|ldr\\tx10\\|cinc\\tx0" \
  notes/stage_09_language_level_optimization/topic_03_simd_and_data_layout/task_03_manual_simd_price_filter/benchmark_manual_simd_price_filter_O2.s
```

## Важная Ошибка Baseline

Сначала в scalar baseline стояло только:

```cpp
#pragma clang loop vectorize(disable)
```

Этого оказалось недостаточно для честного scalar baseline. На `-O2`/`-O3`
компилятор все равно превращал loop в SIMD-похожий код. В assembly это было
видно по инструкциям:

```asm
cmhi.2d
sub.2d
```

После этого scalar baseline был зажат сильнее:

```cpp
#pragma clang loop vectorize(disable)
#pragma clang loop interleave(disable)
#pragma clang loop unroll(disable)
```

После такой правки scalar loop в assembly стал обычным scalar проходом:

```asm
ldr     x10, [x8], #8
cmp     x10, x1
cinc    x0, x0, hi
subs    x9, x9, #1
b.ne    ...
```

Вывод: если мы хотим честно сравнивать scalar vs SIMD, надо проверять assembly,
а не верить только названию функции.

## Что Видно В Assembly

`SCALAR` после правки:

- нет основного SIMD loop;
- идет загрузка одного `uint64_t`;
- сравнение;
- conditional increment через `cinc`.

`AUTO`:

- компилятор сам делает vectorized/unrolled loop;
- видны несколько SIMD compare подряд:

```asm
cmhi.2d
cmhi.2d
cmhi.2d
cmhi.2d
```

`MANUAL NEON`:

- ручной код тоже превращается в SIMD loop;
- один `uint64x2_t` содержит только два `uint64_t`;
- чтобы обработать 8 элементов за итерацию, используются четыре `uint64x2_t`
  регистра и четыре accumulator-а.

## Замеры

Данные:

```text
prices_cnt = 1'000'000
valid_percent = 90
threshold = 266
checksum = 749700
```

Контрольные прогоны:

| Run | SCALAR | AUTO | MANUAL NEON |
|---:|---:|---:|---:|
| 1 | 293us | 85us | 85us |
| 2 | 283us | 76us | 76us |
| 3 | 255us | 73us | 73us |
| 4 | 232us | 66us | 66us |
| 5 | 241us | 66us | 67us |

Во всех прогонах checksum одинаковый:

```text
checksum = 749700
```

## Что Было Исправлено В Manual NEON

Первая версия manual NEON делала horizontal sum внутри каждой SIMD-итерации:

```cpp
count += vaddvq_u64(flags);
```

Это хуже, потому что каждую итерацию результат вытаскивается из SIMD-регистра в
scalar value.

Лучше копить результат в SIMD accumulator:

```cpp
acc = vaddq_u64(acc, flags);
```

А `vaddvq_u64` делать один раз после vector loop.

Потом manual loop был дополнительно unrolled на 8 элементов. Для `uint64_t` в
NEON нет `uint64x8_t`, потому что NEON-регистр 128-битный, а `uint64_t` занимает
64 бита. Поэтому 8 элементов обрабатываются четырьмя регистрами:

```cpp
uint64x2_t v0;
uint64x2_t v1;
uint64x2_t v2;
uint64x2_t v3;
```

Важная ошибка при первой попытке unroll: были созданы `acc0`, `acc1`, `acc2`,
`acc3`, но все результаты складывались в `acc0`. Это создавало длинную
зависимую цепочку и не использовало независимые accumulator-ы. Правильный
вариант:

```cpp
acc0 = vaddq_u64(acc0, flags0);
acc1 = vaddq_u64(acc1, flags1);
acc2 = vaddq_u64(acc2, flags2);
acc3 = vaddq_u64(acc3, flags3);
```

## Вывод

Manual NEON не дал большого прироста относительно `AUTO`. Это нормальный
результат, а не ошибка.

Причина: workload очень простой и удобный для компилятора. Это линейный проход
по contiguous `uint64_t` массиву с простым сравнением `prices[i] > threshold`.
Clang сам генерирует хороший vectorized/unrolled loop.

Главный результат задачи:

- честный scalar baseline заметно медленнее;
- `AUTO` уже использует SIMD;
- manual NEON становится сравнимым с `AUTO` только после исправления accumulation
  и unroll;
- ручной SIMD не стоит брать автоматически: сначала надо смотреть assembly и
  измерения.

Практический вывод для проекта: manual SIMD имеет смысл пробовать там, где
compiler не смог сам vectorize важный hot loop или где нужна специфичная схема
обработки данных. Для простого `count prices above threshold` auto-vectorization
достаточно хороша.
