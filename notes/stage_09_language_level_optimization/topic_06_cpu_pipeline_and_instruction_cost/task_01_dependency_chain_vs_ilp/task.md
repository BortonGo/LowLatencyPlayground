# Задача 1. Dependency Chain Vs ILP

## Цель

Понять разницу между latency и throughput на простом numeric loop.
Один accumulator создает зависимую цепочку. Несколько независимых accumulator-ов
дают CPU больше instruction-level parallelism.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_dependency_chain_ilp.cpp
```

Добавь target:

```text
benchmark_dependency_chain_ilp
```

## Данные

Сгенерируй:

```cpp
std::vector<std::uint64_t> values;
```

Размеры:

```text
1M
16M
64M
```

Генерация не входит в measured interval.

## Функции

Один accumulator:

```cpp
std::uint64_t sum_single_accumulator(const std::vector<std::uint64_t>& values);
```

Четыре accumulator-а:

```cpp
std::uint64_t sum_four_accumulators(const std::vector<std::uint64_t>& values);
```

Восемь accumulator-ов:

```cpp
std::uint64_t sum_eight_accumulators(const std::vector<std::uint64_t>& values);
```

Во всех функциях результат должен быть одинаковый.

## Что Писать

`single`:

```cpp
sum += values[i];
```

`four`:

```cpp
acc0 += values[i + 0];
acc1 += values[i + 1];
acc2 += values[i + 2];
acc3 += values[i + 3];
```

В конце:

```cpp
return acc0 + acc1 + acc2 + acc3 + tail;
```

`eight` аналогично, но шаг `i += 8`.

Не забудь tail loop для остатка.

## Что Мерить

Для каждого размера:

```text
single accumulator
4 accumulators
8 accumulators
```

Сделай минимум 5 запусков и используй медиану.

## Report

Таблица:

```text
size | single | four acc | eight acc | best
```

Ответь:

- где несколько accumulator-ов помогли;
- почему один accumulator создает dependency chain;
- почему слишком много accumulator-ов не обязательно лучше;
- видна ли разница в assembly.

## Не Нужно

- использовать SIMD intrinsics;
- менять data layout;
- делать вывод по одному запуску.
