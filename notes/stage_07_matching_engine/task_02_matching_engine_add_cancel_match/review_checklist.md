# Review Checklist. Stage 7 Task 2 Matching Engine Add Cancel Match

## Correctness

- Buy crosses ask correctly.
- Sell crosses bid correctly.
- Trade price uses resting order price.
- Partial fills work both ways.
- Multiple levels match in correct order.
- Remainder rests on own side.
- Cancel works for resting orders.

## API

- Trades are written to caller-owned vector.
- No hidden output allocation inside engine.
- `best_bid/best_ask` are inspectable.
- Missing cancel returns false.

## Performance Thinking

- Hot path allocations are understood.
- Linear cancel limitation is understood.
- Price-time priority preserved.
- Benchmark separates add/cancel/match enough to reason about cost.

## Tests

- Tests cover exact fill.
- Tests cover partial fill.
- Tests cover multiple trades.
- Tests cover cancel.

