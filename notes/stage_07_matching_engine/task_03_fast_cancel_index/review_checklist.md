# Review Checklist. Fast Cancel Index

## Correctness

- Duplicate order id не добавляется дважды.
- `add` обновляет book и index согласованно.
- `cancel` missing id возвращает `false`.
- `cancel` existing id возвращает `true`.
- После cancel id удален из index.
- После `pop_best` id удален из index.
- Empty price level удаляется.
- `order_count_` остается корректным.

## Iterator And Lifetime

- Нет dangling pointer / iterator после `erase`.
- После `levels_.erase(...)` код не использует удаленный iterator.
- `pop_best` не читает `front()` после `pop_front()`.

## Performance

- `cancel` не сканирует все price levels.
- Скан внутри одного price level понятен как временное ограничение.
- Benchmark показывает изменение cancel throughput.

## Tests

- Есть tests для cancel existing/missing.
- Есть test, что filled order нельзя cancel.
- Есть test, что FIFO не ломается после cancel.
- Есть общий `ctest`.

