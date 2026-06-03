# Задача 3. SPSC Latency Histogram

## Цель

Сделать benchmark, который измеряет latency каждого сообщения в `SPSCQueue`.

Нужно увидеть не только общий throughput, но и распределение задержек:

- min;
- median;
- p95;
- p99;
- max.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_04_queues_and_concurrency/benchmark_spsc_latency_histogram.cpp
```

## CMake

Добавь benchmark executable:

```cmake
add_executable(benchmark_spsc_latency_histogram
        benchmarks/stage_04_queues_and_concurrency/benchmark_spsc_latency_histogram.cpp
)

target_include_directories(benchmark_spsc_latency_histogram PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(benchmark_spsc_latency_histogram PRIVATE Threads::Threads)
```

## Message Type

Используй структуру:

```cpp
struct TimedMessage {
    std::uint64_t sequence;
    std::chrono::steady_clock::time_point sent_at;
};
```

## Requirements

- Используй уже реализованный `llp::SPSCQueue<TimedMessage>`.
- `message_count = 1'000'000`.
- `queue_capacity = 1024` или `4096`.
- Producer thread отправляет сообщения `0..message_count-1`.
- Producer выставляет `sent_at` перед successful `push`.
- Consumer thread читает все сообщения.
- Consumer считает latency: `now - sent_at`.
- Latency добавляется в `llp::LatencyStats`.
- Consumer считает checksum по `sequence`.
- Измерь total elapsed time всего run.

## Output

Вывод должен быть примерно такой:

```text
spsc_latency_histogram
messages     : 1000000
checksum     : ...
elapsed      : ... us
throughput   : ... msg/sec
latency min  : ... ns
latency p50  : ... ns
latency p95  : ... ns
latency p99  : ... ns
latency max  : ... ns
```

## Критерии Готовности

- Benchmark собирается в Release.
- Consumer получил ровно `message_count` сообщений.
- Checksum не ноль и соответствует всем sequence.
- Latency stats печатаются.
- Ты можешь объяснить разницу между throughput и latency.
- Ты можешь объяснить, почему p99 важнее average для trading systems.

## Подсказка 1

Не измеряй failed `push` или failed `pop`.

Latency сообщения начинается только тогда, когда producer реально публикует
сообщение в очередь.

## Подсказка 2

Для producer loop удобно делать так:

```cpp
TimedMessage msg{};
msg.sequence = i;
msg.sent_at = Clock::now();

while (!queue.push(msg)) {
}
```

## Подсказка 3

`LatencyStats` можно заполнять только из consumer thread. Тогда не нужен mutex.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_04_queues_and_concurrency/benchmark_spsc_latency_histogram.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- короткое объяснение, что показывает p99.

