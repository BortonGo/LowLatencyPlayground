# OrderBookSide Redesign Decision

## Inputs

- Benchmark: `benchmark_price_level_array_book_side`
- Benchmark: `benchmark_flat_matching_engine`
- Profile: `notes/stage_08_profiling/task_04_generalize_flat_order_book_side/profiling_price_level_array_book_side.txt`
- Profile: `notes/stage_08_profiling/task_05_flat_matching_engine_experiment/profiling_flat_matching_engine.txt`
- Notes: `notes/stage_08_profiling/task_04_generalize_flat_order_book_side/profiling_notes.md`
- Notes: `notes/stage_08_profiling/task_06_order_book_side_redesign_decision/orderBookSide_redesign_decision.md`

## Current State

The original `OrderBookSide` uses:

- `std::map<price, std::deque<Order>>` for price levels;
- `std::unordered_map<order_id, price>` for cancel/pop lookup;
- `std::deque<Order>` inside each price level.

The flat experiment uses:

- `std::vector<std::deque<Order>>` for price levels;
- cached `best_level_index_`;
- the same `std::unordered_map` idea for order id lookup;
- the same `std::deque<Order>` inside each price level.

So the flat version removes most of the `std::map` price-level overhead, but it does not remove `unordered_map` allocation/free or `deque` allocation behavior.

## Results

| Variant | Add | Match | Cancel | Allocations | Complexity | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| current `OrderBookSide` | slower than flat in current benchmark | slower than flat in current benchmark | slower than flat in current benchmark | `unordered_map`, `deque`, `map` nodes | low | simple baseline, flexible price range |
| current `OrderBookSide` + `reserve()` | better than without reserve | still has erase/free cost | still has erase/free cost | `__do_rehash` reduced, node allocation remains | low | useful small fix, already worth keeping |
| `PriceLevelArrayBookSide` | faster add in current benchmark | slightly better/close in matching benchmark | faster cancel in current benchmark | `unordered_map`, `deque` remain | medium | good when price range is bounded |
| flat matching engine | faster add/cancel in current benchmark | close to current engine, sometimes slightly faster | faster in current benchmark | setup/destructor and `LatencyStats` can pollute profile | medium | useful experiment, not production replacement yet |

## Profile Symbols

Symbols still visible in profiles:

- `std::__hash_table::__emplace_unique`
- `std::__hash_table::__erase_unique`
- `operator new`
- `malloc`
- `free`
- `_xzm_free`
- `std::deque::__add_back_capacity`

Symbols reduced or made less important by previous work:

- `std::__hash_table::__do_rehash` after `reserve()`;
- repeated best-level scan after caching `best_level_index_`;
- `std::map` price-level traversal in the flat price-level experiment.

Noise or benchmark harness symbols also appear:

- `_dyld_start`
- `std::chrono::steady_clock::now`
- `LatencyStats::median`
- `LatencyStats::percentile`
- destructor/free work after measured benchmark sections

These symbols mean that the current profiles are useful, but not perfectly isolated hot-path profiles.

## Analysis

The flat price-level design is a useful direction because it removes `std::map` from bounded-range order books and gives stable O(1) best-level access after caching.

However, the remaining profile does not prove that `deque` is the only next bottleneck. `deque` appears in allocation paths, but `unordered_map::erase`, `unordered_map::emplace`, `operator new`, `malloc`, and `free` are also clearly visible.

Because of that, replacing `deque` with `vector` should be treated as a hypothesis, not as the final redesign decision.

The next step should stay small and measurable. Before changing the level container or writing a new order store, the benchmark should isolate the hot path better:

- avoid profiling setup/destructor as much as possible;
- avoid sorting latency samples inside the same profile window;
- measure `pop_best` and `cancel` separately;
- compare the cost of `unordered_map` erase/free against `deque` behavior.

## Decision

Do not replace production `OrderBookSide` yet.

Keep `FlatMatchingEngine` as an experiment and use it to drive the next profiling tasks.

The next smallest useful step is:

```text
build a cleaner hot-path benchmark/profile for pop_best and cancel,
then decide whether the next real change is order-id index redesign or price-level container redesign.
```

## Next Task

Create a clean hot-path profiling task that separates:

- setup;
- measured add;
- measured match/pop;
- measured cancel;
- result printing and latency percentile sorting;
- destructor/free cleanup.

Only after this should we choose between:

- replacing `deque` inside a price level;
- replacing or reducing `unordered_map` usage;
- introducing tombstones or reusable slots.
