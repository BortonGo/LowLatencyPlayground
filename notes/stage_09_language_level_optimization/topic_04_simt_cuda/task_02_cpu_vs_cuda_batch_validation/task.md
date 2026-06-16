# Задача 2. CPU vs CUDA Batch Validation

## Цель

Сравнить CPU scalar validation и CUDA kernel validation.

## Что Сделать

Создай experiment:

```text
cuda_experiments/order_batch_validation/
```

Workload:

- validate ids;
- validate quantities;
- validate price range;
- count invalid orders.

Сравни:

- CPU scalar;
- CUDA kernel-only timing.

## Report

В `profiling_notes.md` запиши numbers для разных batch sizes.

## Не Нужно

- включать transfer overhead в главный вывод этой задачи;
- переносить matching engine на GPU.
