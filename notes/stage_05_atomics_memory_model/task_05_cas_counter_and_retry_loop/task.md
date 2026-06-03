# Задача 5. CAS Counter And Retry Loop

## Цель

Реализовать atomic counter через CAS loop и сравнить его с `fetch_add`.

Нужно понять:

- как работает `compare_exchange_weak`;
- почему нужен retry loop;
- как contention увеличивает число failed CAS attempts.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_05_atomics_memory_model/benchmark_cas_counter.cpp
```

## CMake

Добавь benchmark executable:

```cmake
add_executable(benchmark_cas_counter
        benchmarks/stage_05_atomics_memory_model/benchmark_cas_counter.cpp
)

target_link_libraries(benchmark_cas_counter PRIVATE Threads::Threads)
```

## Scenarios

Сравни:

```text
1. fetch_add relaxed, 1 thread
2. CAS loop relaxed, 1 thread
3. fetch_add relaxed, 2 threads
4. CAS loop relaxed, 2 threads
5. fetch_add relaxed, 4 threads
6. CAS loop relaxed, 4 threads
```

## Requirements

- `iterations_per_thread = 10'000'000`.
- Для CAS loop считай количество failed attempts.
- Для каждого scenario печатай:
  - name;
  - final counter;
  - failed attempts;
  - elapsed;
  - ops/sec.
- Для `fetch_add` failed attempts равны `0`.
- Запускай в Release.

## CAS Increment Hint

Пример формы:

```cpp
auto expected = counter.load(std::memory_order_relaxed);

while (!counter.compare_exchange_weak(
           expected,
           expected + 1,
           std::memory_order_relaxed,
           std::memory_order_relaxed)) {
    ++failed_attempts;
}
```

## Критерии Готовности

- Final counters корректные.
- CAS loop работает в 1/2/4 threads.
- Failed attempts растут при увеличении thread count.
- Ты можешь объяснить, почему CAS loop может быть хуже `fetch_add`.
- Ты можешь объяснить, что failed CAS не является data race.

## Подсказка 1

`failed_attempts` можно считать per-thread локально, а потом суммировать после
`join`. Так ты избежишь дополнительного shared atomic в benchmark.

## Подсказка 2

Для честного сравнения `fetch_add` и CAS используй одинаковый
`iterations_per_thread`.

## Подсказка 3

Если CAS benchmark слишком долгий, уменьши iterations до `1'000'000`, но оставь
это явно в коде.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_05_atomics_memory_model/benchmark_cas_counter.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- объяснение, что происходит с failed attempts при 2 и 4 threads.

