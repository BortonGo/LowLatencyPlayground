# Задача 1. Atomic Counter Benchmark

## Цель

Измерить стоимость обычного counter, atomic relaxed counter и atomic seq_cst
counter.

Потом увидеть, как общий atomic counter ведет себя при нескольких threads.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_05_atomics_memory_model/benchmark_atomic_counters.cpp
```

## CMake

Добавь benchmark executable:

```cmake
add_executable(benchmark_atomic_counter
        benchmarks/stage_05_atomics_memory_model/benchmark_atomic_counters.cpp
)

target_link_libraries(benchmark_atomic_counter PRIVATE Threads::Threads)
```

## Scenarios

Сделай 5 групп сценариев:

```text
1. plain counter, single thread
2. atomic fetch_add relaxed, single thread
3. atomic fetch_add seq_cst, single thread
4. shared atomic fetch_add relaxed, multiple threads
5. shared atomic fetch_add seq_cst, multiple threads
```

Для multi-thread scenarios сравни оба memory order:

```text
shared relaxed, 2 threads
shared seq_cst, 2 threads
shared relaxed, 4 threads
shared seq_cst, 4 threads
```

## Requirements

- Для single-thread используй `iterations = 100'000'000`.
- Для multi-thread используй `threads = 2` и `threads = 4`.
- Для multi-thread можно взять `iterations_per_thread = 10'000'000`.
- Для каждого сценария печатай:
  - name;
  - elapsed;
  - ops/sec;
  - final counter value.
- Не используй `std::cout` внутри hot loop.
- Запускай benchmark в Release.

## Критерии Готовности

- Benchmark собирается.
- Все final counter values корректные.
- Ты можешь объяснить разницу между plain и atomic.
- Ты можешь объяснить, почему shared atomic counter плохо масштабируется.
- Ты можешь объяснить, что relaxed сохраняет atomicity, но не ordering.
- Ты можешь сравнить relaxed и seq_cst под contention.

## Подсказка 1

Чтобы компилятор не выкинул plain counter, напечатай его final value после loop.

## Подсказка 2

Для elapsed используй `std::chrono::steady_clock`.

## Подсказка 3

Для multi-thread:

```cpp
std::vector<std::thread> workers;
```

Каждый worker делает свой loop и инкрементит общий atomic counter.

## Подсказка 4

Можно сделать helper, который принимает memory order:

```cpp
void run_shared_atomic(std::string_view name,
                       int thread_count,
                       std::memory_order order);
```

Внутри worker:

```cpp
counter.fetch_add(1, order);
```

## Что Прислать На Review

Пришли:

- `benchmarks/stage_05_atomics_memory_model/benchmark_atomic_counters.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- свое объяснение, почему multi-thread shared atomic стал медленнее.
- свое сравнение `relaxed` vs `seq_cst` в multi-thread сценарии.
