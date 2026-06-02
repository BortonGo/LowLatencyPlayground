# Review Checklist. Stage 5 Task 3 Mutex Vs SpinLock

## Correctness

- Все scenarios запускаются.
- Final counter корректный во всех scenarios.
- Workload одинаковый для mutex и spinlock.
- Longer critical section действительно находится внутри lock.

## Measurement

- Benchmark запускается в Release.
- Нет `std::cout` внутри hot loop.
- Elapsed измеряется вокруг всей multi-thread работы.
- Thread creation одинаково влияет на сравниваемые scenarios.
- Results читаемые.

## Concurrency

- Shared counter защищен lock.
- Threads joined до чтения result.
- Нет data race в checksum/work variables.

## Performance Thinking

- Есть понимание contention.
- Есть понимание, почему spinlock тратит CPU при ожидании.
- Есть понимание, почему mutex может быть лучше при long critical section.
- Есть вывод, что shared lock в hot path лучше избегать.

## Style

- Используется `llp::SpinLock`.
- Includes явные.
- Helper functions не усложняют код.

