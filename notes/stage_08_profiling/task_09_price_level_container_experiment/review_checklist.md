# Review Checklist. Price Level Container Experiment

## Benchmark

- Есть `benchmark_price_level_container`.
- `deque` и `vector` сравниваются на одинаковых данных.
- Есть push back scenario.
- Есть front scenario.
- Есть pop front scenario.
- Есть cancel/erase near front.
- Есть cancel/erase near middle.
- Есть cancel/erase near back.
- Есть checksum.

## Analysis

- Notes объясняют, где `deque` лучше.
- Notes объясняют, где `vector` лучше.
- Notes не делают production rewrite без integration benchmark.
- Tombstone назван как отдельная гипотеза, если нужен.

## Scope

- `PriceLevelArrayBookSide` не переписан в этой задаче.
- `MatchingEngine` не переписан.
- Allocator не добавлен.
- Задача остается isolated experiment.
