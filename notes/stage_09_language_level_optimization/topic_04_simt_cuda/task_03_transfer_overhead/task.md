# Задача 3. Transfer Overhead

## Цель

Измерить цену host-device transfers.

## Что Сделать

На CUDA validation experiment измерь отдельно:

- host to device copy;
- kernel time;
- device to host copy;
- full path.

Batch sizes:

```text
1K
10K
100K
1M
10M
```

## Report

В `profiling_notes.md` запиши, где transfer dominates, а где kernel dominates.

## Не Нужно

- делать вывод "GPU быстрее" только по kernel-only time.
