# Review Checklist. Stage 5 Task 5 CAS Counter And Retry Loop

## Correctness

- Final counter равен `threads * iterations_per_thread`.
- CAS loop не теряет increments.
- Failed attempts считаются отдельно от successful operations.
- Threads joined перед чтением результатов.

## Atomics

- Используется `compare_exchange_weak` внутри loop.
- `expected` используется правильно.
- Memory order задан явно.
- Нет лишнего shared counter для failed attempts в hot path.

## Measurement

- Fetch add и CAS используют одинаковый workload.
- Ops/sec считается от successful increments.
- Failed attempts выводятся отдельно.
- Benchmark запускается в Release.

## Understanding

- Есть понимание retry loop.
- Есть понимание weak CAS.
- Есть понимание, почему lock-free может иметь плохой tail latency.

