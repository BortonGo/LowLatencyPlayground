# Review Checklist. Stage 7 Task 1 Order Book Side

## Correctness

- Buy best is highest price.
- Sell best is lowest price.
- FIFO preserved at same price.
- Invalid orders rejected.
- Cancel removes existing orders.
- Empty levels are erased.

## API

- `best_order()` returns pointer or nullptr.
- `add/cancel` return bool.
- Order struct is simple.
- Namespace `llp`.

## Performance Thinking

- Linear cancel cost is understood.
- Price levels are ordered.
- There is awareness of allocation in map/deque.
- Next step toward order_id index is clear.

## Tests

- Tests cover buy and sell sides.
- Tests cover same-price FIFO.
- Tests cover missing cancel.

