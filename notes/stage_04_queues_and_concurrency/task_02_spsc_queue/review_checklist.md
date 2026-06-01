# Review Checklist. Stage 4 Task 2 SPSC Queue

## Correctness

- Constructor rejects zero capacity.
- Constructor rejects non power-of-two capacity.
- FIFO order сохраняется.
- Full queue returns false on push.
- Empty queue returns false on pop.
- Wrap-around работает.
- Capacity корректная.

## Concurrency

- `head` и `tail` atomic.
- Producer пишет только `tail`.
- Consumer пишет только `head`.
- `push` использует release store для publish tail.
- `pop` использует acquire load для observe tail.
- Queue используется только как SPSC, не MPMC.

## Measurement

- Benchmark запускается в Release build.
- Producer и consumer работают в отдельных threads.
- Измеряется весь concurrent run.
- Checksum проверяет, что данные реально прочитаны.
- Allocation после construction отсутствует.

## Performance Thinking

- Capacity power of two.
- Index считается через mask, не modulo.
- Есть понимание busy wait trade-off.
- Есть понимание false sharing риска для head/tail.

## Style

- Namespace `llp`.
- Header include list явный.
- Tests покрывают edge cases.
- Benchmark output читаемый.
