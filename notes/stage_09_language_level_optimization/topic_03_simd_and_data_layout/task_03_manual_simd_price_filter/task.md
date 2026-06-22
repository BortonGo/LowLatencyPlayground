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
