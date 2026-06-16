# Задача 1. Branch Distribution Baseline

## Цель

Понять, как распределение valid/invalid orders влияет на branch-heavy validation loop.

## Что Сделать

Добавь benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_branch_distribution.cpp
```

Сделай baseline validation function без hints.

Workloads:

- 99% valid;
- 90% valid;
- 50% valid;
- random invalid fields.

## Report

В `profiling_notes.md` запиши:

- numbers для каждого distribution;
- где branch predictor справляется;
- где performance проседает.

## Не Нужно

- добавлять `[[likely]]`;
- менять engine.
