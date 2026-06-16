# Задача 4. inline/noinline

## Цель

Измерить цену function boundary и влияние forced inline/noinline.

## Что Сделать

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_inline_noinline.cpp
```

Сравни:

- validation code inside loop;
- small helper normal;
- forced inline helper;
- noinline helper.

## Report

В `profiling_notes.md` запиши:

- numbers;
- изменился ли assembly;
- где call overhead заметен;
- где forced inline не нужен.

## Не Нужно

- добавлять forced inline в production engine без отдельного решения.
