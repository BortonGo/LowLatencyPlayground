# Задача 1. Optimization Levels

## Цель

Понять, как `Debug`, `RelWithDebInfo`, `Release`, `-O2` и `-O3` влияют на один и тот же hot loop.

## Что Сделать

Добавь benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp
```

Workloads:

- sum order prices;
- count valid orders;
- count orders above threshold;
- copy matching ids into preallocated output.

## Измерения

Собери и сравни:

- Debug;
- RelWithDebInfo;
- Release;
- Release + explicit `-O2`;
- Release + explicit `-O3`.

## Report

Создай `profiling_notes.md` в папке задачи.

Запиши:

- команды сборки;
- benchmark numbers;
- какой optimization level дал лучший результат;
- где разница маленькая или шумная.

## Не Нужно

- менять production code;
- смотреть SIMD вручную;
- добавлять hints.
