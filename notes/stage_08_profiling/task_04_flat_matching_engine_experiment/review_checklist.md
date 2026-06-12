# Review Checklist. Flat Matching Engine Experiment

## API

- Есть `FlatOrderBookSide`.
- Есть `FlatMatchingEngine`.
- API похож на текущие `OrderBookSide` и `MatchingEngine`.
- Старый `MatchingEngine` не сломан.

## Correctness

- Buy side выбирает highest price.
- Sell side выбирает lowest price.
- FIFO внутри price level сохраняется.
- Partial fill работает.
- Full fill удаляет order.
- Out-of-range orders rejected.
- Cancel resting order работает.
- Существующие тесты проходят.

## Tests

- Есть тесты для resting orders.
- Есть тесты для crossing orders.
- Есть тесты для multiple price levels.
- Есть тест cancel.
- Есть тест out-of-range.

## Benchmark

- Benchmark сравнивает old engine и flat engine.
- Workload одинаковый для обоих вариантов.
- Есть checksum.
- Trade output не добавляет лишний allocation noise.

## Profiling

- Есть profile для flat benchmark.
- Проверено, что стало со `std::map`.
- Проверено, что осталось от `unordered_map`.
- Проверено, что осталось от `std::deque`.

## Low-Latency Thinking

- В notes написаны ограничения flat storage.
- Нет утверждения, что flat всегда лучше.
- Вывод основан на benchmark/profile, а не на ощущениях.
