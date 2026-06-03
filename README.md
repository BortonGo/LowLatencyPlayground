# Low Latency Playground

Это мой учебный C++ playground для прокачки в low-latency / high-performance /
systems programming.

Я собираю здесь маленькие эксперименты и benchmark-и, чтобы лучше понимать, как
на практике ведут себя cache locality, layout данных, аллокации, atomics,
очереди, latency measurement и другие вещи, которые важны в HFT/infra C++.

Идея простая: беру одну небольшую тему, пишу минимальный код, измеряю, смотрю на
результат, потом улучшаю. Не пытаюсь сразу строить большой framework.

## Что Сейчас Есть

Stage 1: measurement basics

- `LatencyStats`
- `BenchmarkTimer`
- benchmark `vector::push_back` с `reserve()` и без
- benchmark traversal `std::vector` vs `std::list`

Stage 2: cache locality

- false sharing demo
- struct layout experiment
- AoS vs SoA benchmark
- branch prediction benchmark

Stage 3: allocations and memory

- heap allocation cost benchmark
- fixed-size memory pool
- ObjectPool<T>
- no-allocation message processing experiment

Stage 4: queues and concurrency

- fixed-capacity ring buffer
- SPSC queue
- SPSC latency histogram

Stage 5: atomics and memory model

- atomic counter benchmark
- SpinLock
- mutex vs spinlock benchmark
- memory order / CAS задачи в работе

## Структура

```text
include/      headers
tests/        GoogleTest tests
benchmarks/   benchmark-и, разложенные по stage-ам
notes/        theory, tasks, review checklists
```

Задания, заметки и benchmark-и лежат по похожей структуре:

```text
notes/
  stage_01_measurement_basics/
  stage_02_cache_locality/
  stage_03_allocations_memory/
  stage_04_queues_and_concurrency/
  stage_05_atomics_memory_model/
  stage_06_market_data_pipeline/

benchmarks/
  stage_01_measurement_basics/
  stage_02_cache_locality/
  stage_03_allocations_memory/
  stage_04_queues_and_concurrency/
  stage_05_atomics_memory_model/
```

## Как Собрать

Debug build:

```bash
cmake -S . -B cmake-build-debug -DCMAKE_BUILD_TYPE=Debug
cmake --build cmake-build-debug
```

Release build для benchmark-ов:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release
```

## Тесты

```bash
cmake --build cmake-build-debug --target llp_tests
ctest --test-dir cmake-build-debug --output-on-failure
```

## Benchmark-и

Benchmark-и лежат по папкам, но CMake target names остались короткими. Примеры:

```bash
cmake --build cmake-build-release --target benchmark_vector_push_back
./cmake-build-release/benchmark_vector_push_back
```

```bash
cmake --build cmake-build-release --target benchmark_list_vs_vector
./cmake-build-release/benchmark_list_vs_vector
```

```bash
cmake --build cmake-build-release --target false_sharing_demo
./cmake-build-release/false_sharing_demo
```

```bash
cmake --build cmake-build-release --target benchmark_spsc_latency_histogram
./cmake-build-release/benchmark_spsc_latency_histogram
```

```bash
cmake --build cmake-build-release --target benchmark_atomic_counters
./cmake-build-release/benchmark_atomic_counters
```

```bash
cmake --build cmake-build-release --target benchmark_mutex_vs_spin_lock
./cmake-build-release/benchmark_mutex_vs_spin_lock
```

Benchmark-и лучше смотреть именно в Release. Debug результаты почти всегда
искажают картину.

## Заметки По Подходу

Я стараюсь держать задачи маленькими:

- сначала correctness;
- потом tests;
- потом benchmark;
- потом review и исправления;
- только потом следующая тема.

Для latency я смотрю не только на average, но и на median, p95, p99, p99.9 и
max. Часто самое интересное прячется именно в tail latency.

## Roadmap

### Stage 1. Measurement Basics

- [LatencyStats and BenchmarkTimer](notes/stage_01_measurement_basics/task_01_latency_stats_timer/task.md)
- [Vector push_back with reserve](notes/stage_01_measurement_basics/task_02_vector_push_back/task.md)
- [List vs vector traversal](notes/stage_01_measurement_basics/task_03_list_vs_vector/task.md)

### Stage 2. Cache Locality

- [False sharing demo](notes/stage_02_cache_locality/task_01_false_sharing_demo/task.md)
- [Struct layout experiment](notes/stage_02_cache_locality/task_02_struct_layout_experiment/task.md)
- [AoS vs SoA benchmark](notes/stage_02_cache_locality/task_03_aos_vs_soa_benchmark/task.md)
- [Branch prediction benchmark](notes/stage_02_cache_locality/task_04_branch_prediction_benchmark/task.md)

### Stage 3. Allocations and Memory

- [Heap allocation cost benchmark](notes/stage_03_allocations_memory/task_01_heap_allocation_cost/task.md)
- [Fixed-size memory pool benchmark](notes/stage_03_allocations_memory/task_02_fixed_size_memory_pool/task.md)
- [ObjectPool<T>](notes/stage_03_allocations_memory/task_03_object_pool/task.md)
- [No-allocation pipeline](notes/stage_03_allocations_memory/task_04_no_allocation_pipeline/task.md)

### Stage 4. Queues and Concurrency

- [Fixed-capacity ring buffer](notes/stage_04_queues_and_concurrency/task_01_ring_buffer/task.md)
- [SPSC queue](notes/stage_04_queues_and_concurrency/task_02_spsc_queue/task.md)
- [SPSC latency histogram](notes/stage_04_queues_and_concurrency/task_03_spsc_latency_histogram/task.md)

### Stage 5. Atomics and Memory Model

- [Atomic counter benchmark](notes/stage_05_atomics_memory_model/task_01_atomic_counter_benchmark/task.md)
- [SpinLock](notes/stage_05_atomics_memory_model/task_02_spin_lock/task.md)
- [Mutex vs SpinLock](notes/stage_05_atomics_memory_model/task_03_mutex_vs_spinlock/task.md)
- [Memory order message passing](notes/stage_05_atomics_memory_model/task_04_memory_order_message_passing/task.md)
- [CAS counter and retry loop](notes/stage_05_atomics_memory_model/task_05_cas_counter_and_retry_loop/task.md)

### Stage 6. Market Data Pipeline

- [Binary message parser](notes/stage_06_market_data_pipeline/task_01_binary_message_parser/task.md)
- [No-allocation market data pipeline](notes/stage_06_market_data_pipeline/task_02_no_allocation_pipeline/task.md)
