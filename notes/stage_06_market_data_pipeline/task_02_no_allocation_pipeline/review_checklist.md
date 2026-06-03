# Review Checklist. Stage 6 Task 2 No-Allocation Market Data Pipeline

## Correctness

- Valid messages проходят parser и queue.
- Invalid messages увеличивают `parse_errors`.
- FIFO order сохраняется.
- Full queue увеличивает `failed_pushes`.
- Stats counters соответствуют поведению.
- Checksum подтверждает consumed messages.

## Concurrency

- Producer/consumer ownership понятен.
- Нет data race на stats.
- Queue используется как SPSC.
- Threads joined перед чтением итоговых stats.

## Performance

- Нет allocation после construction.
- Binary input готовится до benchmark.
- Нет `std::cout` внутри hot loop.
- Throughput считается от consumed messages.
- Backpressure измеряется.

## API

- `submit` возвращает `bool`.
- `poll` возвращает `bool`.
- `stats()` не копирует тяжелые данные.
- Namespace `llp`.

## Understanding

- Есть объяснение hot path.
- Есть объяснение backpressure.
- Есть понимание parse errors vs queue full.

