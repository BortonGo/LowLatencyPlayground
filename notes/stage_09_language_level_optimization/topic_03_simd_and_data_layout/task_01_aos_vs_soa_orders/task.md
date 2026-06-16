# Задача 1. AoS vs SoA For Orders

## Цель

Проверить, как layout данных влияет на batch processing.

## Что Сделать

Добавь benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_aos_soa_orders.cpp
```

Сравни:

- `std::vector<Order>`;
- separate arrays: ids, prices, quantities, sides.

Workloads:

- sum prices;
- count price above threshold;
- validate quantity;
- count side.

## Report

В `profiling_notes.md` запиши:

- где SoA быстрее;
- где AoS достаточно хорош;
- как layout влияет на cache/SIMD.

## Не Нужно

- менять production `Order`;
- SIMD intrinsics пока не писать.
