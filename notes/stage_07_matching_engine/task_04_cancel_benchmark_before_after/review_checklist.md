# Review Checklist. Cancel Benchmark Before After

## Measurement

- Timed секция содержит только измеряемую операцию.
- Подготовка данных вынесена до таймера.
- `operations` соответствует числу операций в timed секции.
- `successful_cancels` считается отдельно.
- Checksum не константный и зависит от результата.

## Output

- Есть elapsed в microseconds.
- Есть throughput в ops/sec.
- Есть trades generated для match.
- Названия сценариев понятные.

## Interpretation

- Есть вывод, почему cancel отличается от add/match.
- Есть понимание, что throughput не показывает tail latency.
- Есть понимание, что fast index `order_id -> price` ускоряет только часть пути.

