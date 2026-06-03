# Задача 2. No-Allocation Market Data Pipeline

## Цель

Собрать простой market data pipeline:

```text
binary bytes -> BinaryFeedParser -> SPSCQueue<MarketDataMessage> -> consumer
```

Нужно использовать уже написанные компоненты и не делать allocation в hot path.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/market_data_pipeline.hpp
tests/test_market_data_pipeline.cpp
benchmarks/stage_06_market_data_pipeline/benchmark_market_data_pipeline.cpp
```

Можно использовать:

```text
include/llp/binary_feed_parser.hpp
include/llp/spsc_queue.hpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_market_data_pipeline.cpp
```

Добавь benchmark executable:

```cmake
add_executable(benchmark_market_data_pipeline
        benchmarks/stage_06_market_data_pipeline/benchmark_market_data_pipeline.cpp
)

target_include_directories(benchmark_market_data_pipeline PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(benchmark_market_data_pipeline PRIVATE Threads::Threads)
```

## Pipeline Stats

Сделай stats struct:

```cpp
struct PipelineStats {
    std::uint64_t parsed = 0;
    std::uint64_t parse_errors = 0;
    std::uint64_t pushed = 0;
    std::uint64_t failed_pushes = 0;
    std::uint64_t consumed = 0;
    std::uint64_t checksum = 0;
};
```

## Interface

Один возможный вариант:

```cpp
class MarketDataPipeline {
public:
    explicit MarketDataPipeline(std::size_t queue_capacity);

    bool submit(const std::byte* data, std::size_t size);
    bool poll(MarketDataMessage& out);

    const PipelineStats& stats() const noexcept;
};
```

## Requirements

- `submit` парсит binary message.
- Если parse failed, увеличить `parse_errors` и вернуть `false`.
- Если queue full, увеличить `failed_pushes` и вернуть `false`.
- Если push successful, увеличить `parsed` и `pushed`.
- `poll` читает из queue.
- Если pop successful, увеличить `consumed` и checksum.
- Не делать allocation после construction.
- Capacity очереди должна быть power of two.

## Unit Tests

Покрой минимум:

- valid message submit returns true;
- invalid message increments parse_errors;
- poll returns submitted message;
- FIFO order через pipeline;
- full queue increments failed_pushes;
- stats counters корректны.

## Benchmark

Сценарий:

- заранее подготовь binary buffer с `1'000'000` сообщений;
- producer thread вызывает `submit`;
- consumer thread вызывает `poll`;
- consumer должен получить все successful messages;
- печатай:
  - elapsed;
  - throughput msg/sec;
  - stats;
  - checksum.

## Критерии Готовности

- Tests проходят.
- Benchmark запускается в Release.
- В hot path нет allocation.
- Stats позволяют увидеть parse errors/backpressure.
- Ты можешь объяснить, где в pipeline может появиться latency spike.

## Подсказка 1

Если producer получает `failed_pushes`, он может retry same message:

```cpp
while (!pipeline.submit(ptr, size)) {
}
```

Но будь осторожен: parse error retry делать не надо.

## Подсказка 2

Для benchmark лучше использовать только valid messages, чтобы не смешивать parsing
errors и queue pressure.

## Подсказка 3

Stats в multi-thread pipeline могут потребовать atomics или ownership discipline.
Для первой версии можно держать stats update на тех потоках, которые владеют
операцией, но на review мы внимательно проверим data race.

## Что Прислать На Review

Пришли:

- `include/llp/market_data_pipeline.hpp`;
- `tests/test_market_data_pipeline.cpp`;
- `benchmarks/stage_06_market_data_pipeline/benchmark_market_data_pipeline.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- вывод Release benchmark;
- объяснение, где может возникать backpressure.

