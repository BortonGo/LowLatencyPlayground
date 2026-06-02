# Review Checklist. Stage 4 Task 3 SPSC Latency Histogram

## Correctness

- Producer отправляет ровно `message_count` сообщений.
- Consumer читает ровно `message_count` сообщений.
- Нет off-by-one в loops.
- Checksum подтверждает, что сообщения реально дошли.
- `LatencyStats` получает только successful message latencies.

## Concurrency

- Используется один producer и один consumer.
- `LatencyStats` обновляется только consumer thread.
- Нет shared non-atomic counter, который пишут оба threads.
- Threads joined до чтения итоговых результатов.

## Measurement

- Benchmark запускается в Release.
- Total elapsed измеряет весь concurrent run.
- Latency измеряется per message.
- Throughput считается из total elapsed и message count.
- `std::cout` не вызывается внутри hot loop.

## Performance Thinking

- Понятно, что `Clock::now()` имеет стоимость.
- Понятно, что p99 может быть хуже median из-за stalls/backlog.
- Понятно, что latency histogram показывает tail behavior.

## Style

- Output читаемый.
- Имена переменных понятные.
- Нет лишних allocations в hot loop, кроме заранее подготовленных структур.

