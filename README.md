# Low Latency Playground

Low Latency Playground - учебный C++ репозиторий для практики в
low-latency, high-performance и systems-oriented C++ на уровне, который часто
ожидают на собеседованиях в HFT и инфраструктурные команды.

Проект специально построен вокруг маленьких упражнений. Каждая тема начинается
с небольшой задачи, узкого интерфейса, тестов и benchmark. Сначала ты пишешь
первую версию сам; потом мы разбираем ее как на code review: корректность,
undefined behavior, скрытые аллокации, поведение cache, дизайн API и влияние
на latency.

## Что Прокачиваем

- Измерение latency с реалистичной методологией.
- Cache locality, false sharing и layout данных в памяти.
- Уход от аллокаций в hot path.
- Ring buffer и SPSC queue.
- Корректное использование atomics и memory ordering.
- Простые market data и matching-engine pipeline.
- Profiling и поиск настоящих bottleneck.

## Структура Репозитория

```text
LowLatencyPlayground/
  CMakeLists.txt
  README.md
  include/      Public headers
  src/          Реализации и небольшие demo
  tests/        Unit tests
  benchmarks/   Microbenchmarks и latency experiments
  notes/        Теория, задания и review checklist
```

## Правила Обучения

1. Двигаемся по одной маленькой задаче за раз.
2. Предпочитаем простой и измеримый код "умному" коду.
3. Не оптимизируем, пока baseline не корректен и не измерен.
4. В hot-path коде аллокации, ветвления, cache misses и atomics - это
   осознанные design decisions.
5. Всегда отделяем setup benchmark от измеряемого участка.
6. Смотрим на распределение latency, а не только на average.

## План

### Этап 1. Measurement Basics

- `BenchmarkTimer`
- `LatencyStats`
- Warm-up iterations
- Median, p95, and p99 latency
- Why average latency is not enough
- `vector` vs `list`
- Impact of `reserve()`

Текущие задачи:

- [Task 1. LatencyStats and BenchmarkTimer](notes/stage_01_measurement_basics/task_01_latency_stats_timer/task.md)
- [Task 2. Vector push_back with reserve](notes/stage_01_measurement_basics/task_02_vector_push_back/task.md)
- [Task 3. List vs vector traversal](notes/stage_01_measurement_basics/task_03_list_vs_vector/task.md)

### Этап 2. Cache Locality

- Cache lines
- False sharing
- Contiguous memory
- AoS vs SoA
- Branch prediction basics

Текущая задача:

- [Task 1. False sharing demo](notes/stage_02_cache_locality/task_01_false_sharing_demo/task.md)
- [Task 2. Struct layout experiment](notes/stage_02_cache_locality/task_02_struct_layout_experiment/task.md)
- [Task 3. AoS vs SoA benchmark](notes/stage_02_cache_locality/task_03_aos_vs_soa_benchmark/task.md)

### Этап 3. Allocations and Memory

- Heap allocation cost
- Fixed-size memory pool
- Object pool
- Allocator-aware thinking
- Avoiding allocation in hot paths

### Этап 4. Ring Buffer

- Circular buffer
- SPSC queue
- Power-of-two capacity
- Mask instead of modulo
- Padding to avoid false sharing
- Acquire/release memory ordering

### Этап 5. Atomics and Memory Model

- Relaxed, acquire, release, seq_cst
- Happens-before
- CAS
- `atomic_flag` spinlock
- When lock-free is worse than a mutex

### Этап 6. Market Data Pipeline

- Binary message parser
- Order book update events
- No allocation in the hot path
- Batching
- Backpressure basics

### Этап 7. Matching Engine Mini

- Limit orders
- Bid/ask book
- Price-time priority
- Add, cancel, and match
- Throughput and latency measurement

### Этап 8. Profiling

- `perf`
- Cachegrind and Callgrind
- Sanitizers
- Flamegraphs
- Bottleneck interpretation

## Первый Milestone

Реализовать минимальный helper для измерений:

- `LatencyStats`: хранит samples и считает статистику распределения.
- `BenchmarkTimer`: запускает warm-up и measured iterations вокруг callable.

Начинаем с корректности и четких границ измерения. API и performance будем
улучшать после того, как появится первая рабочая версия.
