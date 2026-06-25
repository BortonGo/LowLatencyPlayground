# Задача 3. Manual SIMD Price Filter

## Цель

Написать одну маленькую manual SIMD функцию и честно сравнить ее с compiler auto-vectorization.
Работаем только с `prices[]` из SoA, не с matching engine.

## Файл И Общий Контракт

Создай:

```text
benchmarks/stage_09_language_level_optimization/benchmark_manual_simd_price_filter.cpp
```

Добавь target `benchmark_manual_simd_price_filter`.

Все варианты получают:

```cpp
const std::vector<std::uint64_t>& prices
std::uint64_t threshold
```

И возвращают одинаковый результат:

```cpp
std::size_t count_prices_above(...);
```

Проверь до benchmark, что scalar, auto и manual возвращают одинаковый count.

## Три Реализации

1. `scalar`: обычный индексный loop. Для Clang отключи auto-vectorization только у этой функции
   через локальный pragma, чтобы это был настоящий scalar baseline.
2. `auto`: такой же loop без pragma. В task 2 ты уже увидел, vectorizes ли его compiler.
3. `manual_neon`: только на Apple Silicon. Используй `<arm_neon.h>` и обрабатывай
   `uint64_t` prices по две lanes за итерацию.

Для manual NEON нужны три части:

```text
vector load prices
compare each lane with threshold
convert comparison mask to count
```

После vector loop обязательно допиши scalar tail для `prices.size() % 2`.

## NEON С Нуля: Что Тебе Нужно Знать

**Intrinsics** - это C++-функции, которые компилятор заменяет конкретными SIMD
инструкциями. Мы не пишем assembly руками, но работаем с регистрами-векторами из
C++.

На Apple Silicon NEON-регистр имеет ширину 128 бит. Поэтому тип
`uint64x2_t` означает один SIMD-регистр с **двумя** `uint64_t` values:

```text
uint64x2_t values = [ prices[i], prices[i + 1] ]
```

Для этой задачи нужны только эти intrinsics из `<arm_neon.h>`:

| Intrinsic | Что делает |
|---|---|
| `vld1q_u64(ptr)` | Загружает два `uint64_t` из `ptr[0]` и `ptr[1]` в `uint64x2_t`. |
| `vdupq_n_u64(x)` | Создаёт `[x, x]`; так создаём SIMD threshold. |
| `vcgtq_u64(a, b)` | Сравнивает lanes `a > b`. Возвращает mask: в каждой lane либо все биты `1`, либо `0`. |
| `vshrq_n_u64(mask, 63)` | Сдвигает mask на 63 бита: превращает `[all_ones, 0]` в `[1, 0]`. |
| `vaddvq_u64(values)` | Складывает две lanes и возвращает обычный `uint64_t`. |

Минимальный один SIMD-шаг выглядит так:

```cpp
const uint64x2_t values = vld1q_u64(prices.data() + i);
const uint64x2_t limit = vdupq_n_u64(threshold);
const uint64x2_t mask = vcgtq_u64(values, limit);
const uint64x2_t flags = vshrq_n_u64(mask, 63);

count += vaddvq_u64(flags);
```

Это не готовая функция, а тело одной итерации vector loop. После неё нужно
увеличить `i` на `2`.

### Skeleton Manual-Функции

Сначала напиши только такой каркас и заполни две помеченные части:

```cpp
std::size_t count_prices_above_manual_neon(
    const std::vector<std::uint64_t>& prices,
    std::uint64_t threshold) {
    std::size_t count = 0;
    std::size_t i = 0;

    // SIMD loop: пока точно есть две цены.
    for (; i + 1 < prices.size(); i += 2) {
        // Вставь SIMD-шаг из блока выше.
    }

    // Tail: последняя цена, если size нечётный.
    for (; i < prices.size(); ++i) {
        count += prices[i] > threshold;
    }

    return count;
}
```

`count += (condition)` в C++ корректно добавляет `1`, когда condition true, и
`0`, когда false. Tail обязателен: например, при трёх prices SIMD обработает
первые две, а последняя попадёт в scalar loop.

### С Чего Начать В Файле

1. Напиши обычную `count_prices_above_scalar` и проверь её на `{1, 5, 10}` с
   `threshold = 5`: ответ должен быть `1`.
2. Добавь `#include <arm_neon.h>` под guard:

   ```cpp
   #if defined(__aarch64__)
   #include <arm_neon.h>
   #endif
   ```

3. Напиши manual-функцию по skeleton выше и проверь, что она тоже возвращает `1`.
4. Проверь нечётный размер: `{1, 5, 10, 11, 2}` с `threshold = 5` должен дать `2`.
5. Только после этого добавляй большой generator и benchmark.

## Platform Guard

Manual function должна компилироваться только под `__aarch64__`.
На другой архитектуре benchmark должен напечатать:

```text
manual NEON: unsupported on this build
```

Не пытайся в этой задаче написать один общий wrapper для NEON и AVX2.

## Данные И Замеры

1. Сгенерируй prices с порогом, который пропускает около 50% значений.
2. Замерь sizes: `1K`, `100K`, `1M`, `10M`.
3. Для каждого size сделай минимум 5 запусков и используй медиану.
4. Не включай генерацию, allocation и result verification в measured interval.

## Report

Таблица:

```text
size | scalar | auto-vectorized | manual NEON | result equal
```

Запиши:

- CPU и compiler;
- что auto loop реально vectorized в task 2;
- была ли manual SIMD быстрее auto;
- сколько дополнительного кода потребовал tail и platform guard;
- стоит ли брать manual SIMD для этого учебного workload.

## Не Нужно

- SIMD-ить matching engine;
- обрабатывать id/quantity/side в этой задаче;
- объявлять manual SIMD победителем, если разница укладывается в шум.
