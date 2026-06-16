# Задача 3. Manual SIMD Price Filter

## Цель

Попробовать manual SIMD на простой операции price threshold.

## Что Сделать

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_manual_simd_price_filter.cpp
```

Сравни:

- scalar SoA loop;
- auto-vectorized loop;
- manual SIMD variant.

На Mac можно начать с NEON, на x86/NVIDIA машине можно сделать AVX2/AVX-512 если доступно.

## Report

В `profiling_notes.md` запиши:

- instruction set;
- CPU;
- numbers;
- насколько manual SIMD сложнее;
- стоит ли оно усилий.

## Не Нужно

- делать portable SIMD abstraction;
- SIMD-ить matching engine.
