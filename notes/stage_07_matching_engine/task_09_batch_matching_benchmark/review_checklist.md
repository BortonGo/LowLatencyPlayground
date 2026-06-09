# Review Checklist. Batch Matching Benchmark

## Benchmark Correctness

- Для каждого batch size используется свежий engine.
- Resting side подготовлена до timed section.
- Orders generation не входит в timed section.
- `TradeBuffer` не переполняется незаметно.
- Checksum есть.

## Output

- Есть batch size.
- Есть orders processed.
- Есть trades generated.
- Есть elapsed.
- Есть orders/sec.

## Interpretation

- Объяснено, какой batch size быстрее.
- Объяснено, почему throughput меняется.
- Указан latency tradeoff.
- Нет вывода, что batching всегда лучше.

