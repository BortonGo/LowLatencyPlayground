# Review Checklist. Stage 6 Task 4 Batching And Backpressure

## Correctness

- Every batch size consumes exactly `message_count`.
- Checksum is correct.
- No messages are skipped on failed submit.
- `failed_pushes` is interpreted as retry pressure.

## Measurement

- Benchmark runs in Release.
- Input prepared before measurement.
- No output inside hot loop.
- Throughput uses consumed messages.
- Results are printed per batch size.

## Performance Thinking

- Batch size trade-off is explained.
- Backpressure is visible in stats.
- There is no per-batch allocation.
- Optional latency stats are understood if implemented.

## Style

- Helper functions keep scenarios readable.
- Constants are named.
- Output is easy to compare.

