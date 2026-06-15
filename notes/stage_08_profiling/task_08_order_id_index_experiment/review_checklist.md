# Review Checklist. Order Id Index Experiment

## API

- Есть experimental `DenseOrderIdIndex`.
- Есть insert.
- Есть find.
- Есть erase.
- Есть clear.
- Out-of-range ids обрабатываются безопасно.

## Correctness

- Empty find возвращает false.
- Duplicate insert rejected.
- Erase existing работает.
- Erase missing возвращает false.
- Clear сбрасывает состояние.

## Benchmark

- Есть comparison с `std::unordered_map`.
- Insert измерен отдельно.
- Find измерен отдельно.
- Erase измерен отдельно.
- Mixed workload измерен отдельно.
- Есть checksum.

## Analysis

- Notes отделяют speedup от ограничения по id range.
- Notes честно пишут memory tradeoff.
- Есть решение, стоит ли делать integration task.

## Scope

- Production `OrderBookSide` не переписан.
- `MatchingEngine` не переписан.
- Allocator не добавлен.
- Это experiment, а не final redesign.
