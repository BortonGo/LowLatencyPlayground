# Задача 3. Division And Strength Reduction

## Цель

Померить цену integer division и посмотреть, когда compiler может заменить
дорогую операцию более дешевой.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_division_strength_reduction.cpp
```

Добавь target:

```text
benchmark_division_strength_reduction
```

## Данные

Сгенерируй:

```cpp
std::vector<std::uint64_t> values;
```

Размер:

```text
16M
```

Значения должны быть не нули:

```cpp
values[i] = 1'000'000 + i;
```

## Функции

Runtime division:

```cpp
std::uint64_t sum_div_runtime(
    const std::vector<std::uint64_t>& values,
    std::uint64_t divisor);
```

Compile-time constant division:

```cpp
std::uint64_t sum_div_const_10(const std::vector<std::uint64_t>& values);
```

Power-of-two division:

```cpp
std::uint64_t sum_div_const_8(const std::vector<std::uint64_t>& values);
```

Manual shift:

```cpp
std::uint64_t sum_shift_3(const std::vector<std::uint64_t>& values);
```

## Что Мерить

Проверь:

```text
runtime divisor = 10
const / 10
const / 8
manual >> 3
```

Для `/ 8` и `>> 3` checksum должен совпасть.

Для `/ 10` runtime и const checksum должен совпасть.

## Assembly

Сохрани assembly для `-O2`:

```bash
clang++ -std=c++23 -O2 -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_division_strength_reduction.cpp \
  -o notes/stage_09_language_level_optimization/topic_06_cpu_pipeline_and_instruction_cost/task_03_division_and_strength_reduction/benchmark_division_strength_reduction_O2.s
```

Посмотри, есть ли настоящая division instruction в runtime варианте и что
compiler делает для constant divisor.

## Report

Таблица:

```text
variant | elapsed | checksum | assembly note
```

Ответь:

- насколько runtime division дороже;
- заменяет ли compiler `/ 8` на shift;
- отличается ли `/ 8` от manual `>> 3`;
- что compiler делает с `/ 10`.

## Не Нужно

- использовать floating point;
- делать hand-written assembly;
- делать вывод без проверки assembly.
