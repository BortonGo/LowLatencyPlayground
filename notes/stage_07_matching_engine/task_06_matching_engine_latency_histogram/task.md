# Задача 6. Matching Engine Latency Histogram

## Цель

Сделать latency benchmark для `MatchingEngine`, который показывает median / p95 / p99 / max для отдельных операций.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_07_matching_engine/benchmark_matching_engine_latency.cpp
```

Добавь в CMake:

```cmake
add_llp_benchmark(benchmark_matching_engine_latency
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_latency.cpp)
```

## Requirements

- Используй существующий `LatencyStats`.
- Сделай warm-up.
- Измеряй минимум `100'000` операций.
- Не включай генерацию orders в timed measurement.
- Печатай:
  - count;
  - min;
  - median;
  - p95;
  - p99;
  - max.

## Scenarios

Сделай минимум три сценария:

```text
ADD RESTING LATENCY
MATCH CROSSING LATENCY
CANCEL RESTING LATENCY
```

## Scenario Details

### Add Resting

Для каждой итерации добавляй order, который не crossing.

### Match Crossing

Перед измерением подготовь resting side. В timed секции добавляй crossing orders.

### Cancel Resting

Перед измерением подготовь resting orders. В timed секции отменяй их по id.

## Критерии Готовности

- Benchmark собирается в Release.
- Benchmark запускается.
- Есть вывод latency stats для трех сценариев.
- Ты можешь объяснить, почему cancel имеет худший tail.
- Ты можешь сравнить latency до/после fast cancel index.

## Подсказка 1

Для одного измерения:

```cpp
const auto start = std::chrono::steady_clock::now();
engine.add(order, trades);
const auto end = std::chrono::steady_clock::now();
stats.add_sample(std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count());
```

Подстрой под твой interface `LatencyStats`.

## Подсказка 2

`trades.clear()` делай между итерациями, но заранее `reserve`.

## Подсказка 3

Если измерения слишком шумные, увеличь количество операций или группируй несколько operations в один sample.

## Что Прислать На Review

Пришли:

- `benchmark_matching_engine_latency.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- короткий вывод по median/p99/max.

