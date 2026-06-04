# Review Checklist. Stage 6 Task 3 Order Book From Feed

## Correctness

- Empty book returns no best bid/ask.
- Bid side chooses highest price.
- Ask side chooses lowest price.
- Same price aggregates quantity.
- Cancel/trade reduce quantity.
- Zero quantity removes level.
- Clear resets state.

## Performance

- Benchmark input prepared before measurement.
- No `std::cout` inside hot loop.
- Updates/sec calculated from processed messages.
- There is awareness that `std::map` allocates and pointer-chases.

## API

- Namespace `llp`.
- `best_bid/best_ask` return `bool`.
- `BookLevel` is simple and copyable.
- Public API is small.

## Understanding

- Can explain L2 aggregated book.
- Can explain bid vs ask ordering.
- Can explain why correctness comes before optimizing container choice.

