# Теория. Batch Matching Benchmark

Batching часто повышает throughput, потому что мы уменьшаем overhead вокруг обработки:

- меньше вызовов внешнего API;
- лучше locality;
- меньше промежуточных flush/clear;
- проще prefetch/cache behavior.

Но batching может ухудшить latency отдельного order:

```text
order ждет, пока наберется batch
```

В low-latency системах почти всегда есть tradeoff:

```text
throughput vs per-message latency
```

## Что Измерять

Для batch benchmark нужно смотреть:

- orders/sec;
- trades generated;
- latency per batch;
- latency per order внутри batch.

Если batch size растет, throughput может улучшиться, но single-order latency может стать хуже.

