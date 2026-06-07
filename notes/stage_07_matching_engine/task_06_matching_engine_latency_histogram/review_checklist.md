# Review Checklist. Matching Engine Latency Histogram

## Measurement

- Есть warm-up.
- Генерация данных не входит в measured section.
- Измеряются отдельные операции, а не весь сценарий одной суммой.
- Используется `LatencyStats`.
- Выводятся median / p95 / p99 / max.

## Scenarios

- Есть add resting latency.
- Есть match crossing latency.
- Есть cancel resting latency.
- Для match подготовлена противоположная сторона.
- Для cancel подготовлены resting orders.

## Correctness

- Benchmark не меряет cancel на пустой книге.
- Checksum или counters защищают от бессмысленной работы.
- Trades buffer заранее подготовлен.

## Interpretation

- Есть объяснение, какая операция имеет худший p99.
- Есть понимание разницы throughput и latency.
- Есть сравнение до/после fast cancel index, если обе цифры сохранены.

