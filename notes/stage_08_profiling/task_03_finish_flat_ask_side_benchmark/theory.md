# Теория. Finishing An Existing Experiment

Если эксперимент уже начат, лучше сначала довести его до честного измерения.

В проекте уже есть:

```text
FlatAskBookSide
benchmark_price_level_storage
tests/test_order_book_side_flat.cpp
```

Это ровно тот материал, который нужен после profile `MatchingEngine`.

## Почему Flat Ask Side

Текущий `OrderBookSide` использует:

```cpp
std::map<std::uint64_t, std::deque<Order>>
```

`std::map` удобен, но pointer-heavy:

- отдельные heap nodes;
- плохая locality;
- лишний indirection;
- allocation на новые price levels.

Для маленького price range можно использовать:

```cpp
std::vector<std::deque<Order>>
```

И считать index:

```text
index = price - min_price
```

## Почему Сначала Ask-Only

Ask side проще проверить:

```text
best ask = lowest non-empty level
```

Если ask-only flat side не показывает понятного результата, нет смысла сразу строить full engine.

## Что Останется Даже После Flat

Flat storage убирает `std::map`, но не убирает всё:

- `std::deque` всё ещё может выделять blocks;
- `unordered_map` index всё ещё node-based;
- `erase` из `unordered_map` может делать `free`;
- cancel внутри level всё ещё может делать linear search.

Это нормально.

Цель эксперимента:

```text
понять цену именно std::map levels
```

А не сразу построить идеальный order book.
