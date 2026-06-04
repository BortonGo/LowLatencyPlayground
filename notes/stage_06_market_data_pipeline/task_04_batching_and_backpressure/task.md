# Задача 4. Batching And Backpressure

## Цель

Расширить market data pipeline benchmark и сравнить single-message processing с
batch processing.

Нужно увидеть trade-off:

```text
batching может улучшить throughput, но изменить latency/backpressure
```

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_06_market_data_pipeline/benchmark_pipeline_batching.cpp
```

Можно использовать существующие:

```text
include/llp/market_data_pipeline.hpp
include/llp/spsc_queue.hpp
include/llp/latency_stats.hpp
```

## CMake

Добавь benchmark executable:

```cmake
add_llp_benchmark(benchmark_pipeline_batching
        benchmarks/stage_06_market_data_pipeline/benchmark_pipeline_batching.cpp
        Threads::Threads)
```

## Scenario

Подготовь binary buffer с `1'000'000` valid messages.

Сравни batch sizes:

```text
1
4
16
64
```

Для каждого batch size:

- producer отправляет messages в pipeline;
- consumer вычитывает messages пачками до `batch_size`;
- consumer считает checksum;
- измеряется elapsed;
- печатается throughput и stats.

## Requirements

- Input buffer готовится до measurement.
- Consumer должен получить `message_count` сообщений.
- Checksum должен совпадать с ожидаемым.
- `failed_pushes` печатается.
- Нет `std::cout` внутри hot loop.
- Запускать в Release.

## Optional Latency

Если хочешь усложнить:

- добавь timestamp в отдельный массив `sent_at[sequence]`;
- producer ставит timestamp перед successful submit;
- consumer считает latency on poll;
- печатай p50/p95/p99 через `LatencyStats`.

Это optional, не обязательно для первой версии.

## Критерии Готовности

- Benchmark собирается.
- Все batch sizes проходят.
- `consumed == message_count`.
- Checksums корректные.
- Ты можешь объяснить, как batch size влияет на throughput/backpressure.

## Подсказка 1

Consumer batch loop:

```text
while local_batch_count < batch_size and pipeline.poll(msg):
    process msg
```

Если queue empty, можно выйти из inner loop и продолжить ждать.

## Подсказка 2

Не делай dynamic allocation внутри каждого batch.

Можно просто использовать счетчик:

```cpp
std::size_t batch_count = 0;
```

## Подсказка 3

Если producer retry-ит same message после failed push, `failed_pushes` - это
pressure metric, не lost messages.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_06_market_data_pipeline/benchmark_pipeline_batching.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- короткий вывод по batch sizes.

