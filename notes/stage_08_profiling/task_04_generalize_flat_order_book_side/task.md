# Задача 4. Generalize Flat OrderBookSide

## Цель

Сделать из существующего `FlatAskBookSide` общий flat side для buy и sell.

Это промежуточный шаг перед flat matching engine.

Цель:

```text
ask-only flat side -> templated FlatOrderBookSide<Side> -> tests for buy/sell
```

## Что Нужно Сделать

Добавь новый header:

```text
include/llp/flat_order_book_side.hpp
```

Минимальный API:

```cpp
template <OrderSide Side>
class FlatOrderBookSide {
public:
    FlatOrderBookSide(std::uint64_t min_price, std::uint64_t max_price);

    void reserve(std::size_t orders_count);
    bool add(const Order& order);
    bool cancel(std::uint64_t order_id);
    Order* best_order() noexcept;
    const Order* best_order() const noexcept;
    void pop_best();
    std::size_t order_count() const noexcept;
    std::size_t level_count() const noexcept;
};
```

Старый `FlatAskBookSide` можно:

- оставить как есть;
- или сделать thin alias/wrapper поверх `FlatOrderBookSide<OrderSide::Sell>`.

Выбери вариант с меньшим churn.

## Requirements

- Sell side ищет best ask от low price к high price.
- Buy side ищет best bid от high price к low price.
- Out-of-range orders rejected.
- Wrong side orders rejected.
- Duplicate ids rejected.
- FIFO внутри price level сохраняется.
- `reserve()` подготавливает id index.
- `pop_best()` удаляет только активный best order.

## Tests

Добавь:

```text
tests/test_flat_order_book_side.cpp
```

Минимум:

- sell best = lowest price;
- buy best = highest price;
- same price FIFO;
- cancel resting order;
- cancel missing order;
- pop best sell;
- pop best buy;
- out-of-range rejected;
- wrong side rejected;
- reserve does not change behavior.

## Benchmark

Обнови или добавь benchmark:

```text
benchmark_price_level_storage
```

Сравни:

- `OrderBookSide<OrderSide::Sell>` vs `FlatOrderBookSide<OrderSide::Sell>`;
- `OrderBookSide<OrderSide::Buy>` vs `FlatOrderBookSide<OrderSide::Buy>`.

## Критерии Готовности

- Есть generic flat side.
- Buy и sell side покрыты тестами.
- Existing `FlatAskBookSide` не сломан или аккуратно заменен.
- Benchmark показывает сравнение buy/sell.
- Существующие тесты проходят.

## Что Не Нужно Делать

Пока не надо:

- встраивать в `MatchingEngine`;
- делать dynamic price range;
- писать fast cancel slot index;
- писать memory pool.

## Подсказка

Для scan direction можно использовать `if constexpr`:

```cpp
if constexpr (Side == OrderSide::Sell) {
    // low -> high
} else {
    // high -> low
}
```
