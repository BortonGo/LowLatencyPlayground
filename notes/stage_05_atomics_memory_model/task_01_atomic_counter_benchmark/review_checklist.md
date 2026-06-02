# Review Checklist. Stage 5 Task 1 Atomic Counter Benchmark

## Correctness

- Plain counter final value равен `iterations`.
- Relaxed counter final value равен `iterations`.
- Seq cst counter final value равен `iterations`.
- Multi-thread counter равен `threads * iterations_per_thread`.

## Measurement

- Benchmark запускается в Release.
- Нет `std::cout` внутри hot loop.
- Elapsed измеряется только вокруг работы.
- Ops/sec считается корректно.
- Results читаемые.

## Atomic Thinking

- `relaxed` не используется как "не atomic".
- `seq_cst` сравнивается отдельно.
- Multi-thread contention замечен и объяснен.
- Есть понимание cache line bouncing.

## Style

- Сценарии вынесены в понятные функции.
- Нет лишнего дублирования там, где простая helper function помогает.
- Includes явные.

