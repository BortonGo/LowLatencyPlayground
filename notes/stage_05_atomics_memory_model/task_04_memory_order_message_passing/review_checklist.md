# Review Checklist. Stage 5 Task 4 Memory Order Message Passing

## Correctness

- Producer отправляет ровно `message_count` payloads.
- Consumer читает ровно `message_count` payloads.
- Checksums корректные.
- Нет data race на payload в release/acquire scenario.
- Threads joined до чтения итоговых результатов.

## Atomics

- Release/acquire scenario использует правильные orders.
- Seq cst scenario отделен явно.
- Relaxed scenario подписан как conceptually unsafe для публикации payload.
- Нет случайного `seq_cst` там, где сценарий называется relaxed/acquire.

## Measurement

- Benchmark запускается в Release.
- Нет `std::cout` внутри hot loop.
- Throughput считается от общего числа сообщений.
- Output читаемый.

## Understanding

- Есть объяснение happens-before.
- Есть связь с `SPSCQueue`.
- Есть понимание, что atomic flag защищает порядок видимости обычных данных.

