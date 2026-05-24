# Review Checklist. Stage 2 Task 1 False Sharing

## Correctness

- Оба threads выполняют одинаковое количество increments.
- Final values counters равны `iterations_per_thread`.
- `join()` вызывается для обоих threads.
- Нет data race.
- Atomic operations используют `memory_order_relaxed`.

## Measurement

- Измеряется весь concurrent run.
- Thread creation входит в measurement осознанно и одинаково для обоих cases.
- Unpadded и padded scenarios отличаются только layout counters.
- Benchmark запускался в Release build.
- Output содержит elapsed time и final counter values.

## Cache Locality

- Unpadded counters могут попасть в одну cache line.
- Padded counters разведены по разным cache lines.
- Есть объяснение cache line bouncing.
- Есть понимание, что false sharing не является data race.

## Style

- Код простой и явно разделяет два сценария.
- Include list соответствует используемым типам.
- Нет лишних abstractions.
- Названия отражают layout: `unpadded`, `padded`.
