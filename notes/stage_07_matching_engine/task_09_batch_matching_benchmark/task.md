# Задача 9. Batch Matching Benchmark

## Цель

Сделать benchmark, который сравнивает processing orders по одному и batches разных размеров.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_07_matching_engine/benchmark_matching_engine_batching.cpp
```

Добавь в CMake:

```cmake
add_llp_benchmark(benchmark_matching_engine_batching
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_batching.cpp)
```

## Requirements

- Используй заранее подготовленные orders.
- Используй `TradeBuffer`.
- Сравни batch sizes:
  - 1;
  - 4;
  - 16;
  - 64.
- Для каждого batch size печатай:
  - batch size;
  - orders processed;
  - trades generated;
  - checksum;
  - elapsed;
  - orders/sec.

## Scenario

Рекомендуемый сценарий:

1. Сгенерировать resting asks.
2. Заполнить engine resting asks до timed section.
3. В timed section обрабатывать crossing buys batches.

Псевдологика:

```text
for batch_start in 0..N step batch_size:
    for i in batch:
        engine.add(crossing[i], trade_buffer)
```

## Optional Latency

Можно добавить latency stats per batch:

```text
duration of processing one batch
```

И потом пересчитать approximate per-order:

```text
batch_duration / batch_size
```

## Критерии Готовности

- Benchmark собирается в Release.
- Есть output для 1/4/16/64.
- Ты можешь объяснить, где batching помогает.
- Ты можешь объяснить, почему batching может ухудшить latency отдельного order.

## Подсказка 1

`TradeBuffer` можно очистить перед timed section, но не обязательно очищать после каждого order.

## Подсказка 2

Следи, чтобы один сценарий не переиспользовал уже "съеденный" engine. Для каждого batch size создай свежий engine и заново подготовь resting side.

## Подсказка 3

Если `TradeBuffer` переполняется, увеличь capacity или очищай его между batches.

## Что Прислать На Review

Пришли:

- benchmark file;
- изменения в CMake;
- Release output;
- короткий вывод по batch sizes.

