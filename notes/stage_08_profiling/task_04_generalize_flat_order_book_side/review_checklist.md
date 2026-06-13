# Review Checklist. Generalize Flat OrderBookSide

## API

- Есть `FlatOrderBookSide<Side>`.
- API похож на `OrderBookSide`.
- Есть `reserve()`.
- Есть `order_count()`.
- Есть `level_count()`.

## Correctness

- Sell side выбирает lowest price.
- Buy side выбирает highest price.
- FIFO сохраняется.
- Cancel работает.
- Pop best работает.
- Out-of-range rejected.
- Wrong side rejected.
- Reserve не меняет behavior.

## Tests

- Есть tests для sell side.
- Есть tests для buy side.
- Есть tests для cancel.
- Есть tests для pop best.
- Есть tests для reserve.

## Benchmark

- Benchmark сравнивает old sell vs flat sell.
- Benchmark сравнивает old buy vs flat buy.
- Workload одинаковый.
- Есть checksum.

## Scope

- `MatchingEngine` пока не переписан.
- Fast cancel пока не добавлен.
- Нет custom allocator.
