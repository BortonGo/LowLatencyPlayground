# Задача 4. SIMD Batch Validation

## Цель

Применить SIMD/SoA к batch validation orders.

## Что Сделать

Сделай workload:

- id != 0;
- quantity != 0;
- price inside range;
- side valid.

Сравни:

- scalar AoS;
- scalar SoA;
- auto-vectorized SoA;
- manual SIMD optional.

## Report

В `profiling_notes.md` запиши:

- где validation vectorizes;
- где branches мешают;
- какой layout лучше;
- можно ли использовать это для batch pre-validation.

## Не Нужно

- менять live matching path.
