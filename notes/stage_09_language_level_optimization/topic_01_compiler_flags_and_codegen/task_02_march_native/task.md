# Задача 2. march=native

## Цель

Проверить, дает ли `-march=native` выигрыш на текущей машине.

## Что Сделать

Используй benchmark из task 1 или отдельный маленький benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_march_native.cpp
```

Сравни:

- `Release`;
- `Release + -march=native`;
- `Release + -O3`;
- `Release + -O3 + -march=native`.

## Report

В `profiling_notes.md` запиши:

- CPU/platform;
- compiler;
- flags;
- numbers;
- можно ли считать binary portable после `-march=native`.

## Не Нужно

- включать `-march=native` глобально без решения;
- менять CMake проекта так, чтобы ломалась другая машина.
