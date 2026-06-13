# Review Checklist. Flat Matching Engine Experiment

## API

- Есть `FlatMatchingEngine`.
- API близок к текущему `MatchingEngine`.
- Есть `reserve()`.
- Есть `best_bid()`.
- Есть `best_ask()`.

## Correctness

- Buy crosses ask.
- Sell crosses bid.
- Partial fills работают.
- Multiple levels match in price-time order.
- FIFO сохраняется.
- Non-crossing остаток rests.
- Cancel resting order работает.
- Out-of-range rejected.

## Tests

- Есть tests для resting orders.
- Есть tests для crossing orders.
- Есть tests для partial fill.
- Есть tests для multiple levels.
- Есть tests для cancel.
- Есть tests для out-of-range.

## Benchmark

- Есть `benchmark_flat_matching_engine`.
- Есть сравнение current vs flat.
- Workload одинаковый.
- Используется `TradeBuffer`.
- Есть checksum.

## Profiling

- Есть profile.
- Проверено, ушел ли `std::map` из hot path.
- Проверено, остался ли `unordered_map`.
- Проверено, остался ли `deque`.

## Scope

- Production engine не заменен.
- Fast cancel не смешан с flat engine experiment.
- Вывод честно описывает ограничения.
