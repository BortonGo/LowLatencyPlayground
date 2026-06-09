# Задача 8. Price Level Storage Experiment

## Цель

Сравнить `std::map`-based price levels с более cache-friendly flat storage для маленького price range.

Это experiment task. Не нужно сразу заменять production `MatchingEngine`.

## Нужные Файлы

Рекомендуемые:

```text
benchmarks/stage_07_matching_engine/benchmark_price_level_storage.cpp
```

Опционально:

```text
include/llp/order_book_side_flat.hpp
tests/test_order_book_side_flat.cpp
```

Добавь benchmark в CMake:

```cmake
add_llp_benchmark(benchmark_price_level_storage
        benchmarks/stage_07_matching_engine/benchmark_price_level_storage.cpp)
```

## Interface

Можно сделать benchmark-only структуру:

```cpp
class FlatAskBookSide {
public:
    explicit FlatAskBookSide(std::uint64_t min_price, std::uint64_t max_price);

    bool add(const Order& order);
    const Order* best_order() const noexcept;
    bool cancel(std::uint64_t order_id);
    void pop_best();
};
```

Для начала можно реализовать только ask side, чтобы сравнить add/match-like traversal.

## Requirements

- Price range фиксированный, например `100..109`.
- Price index считается как `price - min_price`.
- Out-of-range order rejected.
- FIFO внутри одного price level сохраняется.
- Best ask = lowest non-empty level.
- Benchmark сравнивает:
  - current `OrderBookSide<OrderSide::Sell>`;
  - flat ask side.

## Benchmark Scenarios

Минимум:

- add 100k resting asks;
- best lookup loop;
- pop best loop.

Опционально:

- cancel by id.

## Критерии Готовности

- Benchmark собирается.
- Есть честное сравнение map vs flat.
- Ты можешь объяснить, почему flat может быть быстрее.
- Ты можешь объяснить ограничения flat storage.

## Подсказка 1

Flat levels можно хранить так:

```cpp
std::vector<std::deque<Order>> levels_;
```

## Подсказка 2

Best ask можно искать от low index к high index.

Если диапазон `10` levels, linear scan по levels может быть дешевле `std::map`.

## Подсказка 3

Не делай сразу bid+ask+matching engine. Сначала benchmark-only experiment.

## Что Прислать На Review

Пришли:

- benchmark file;
- flat side header, если сделал;
- tests, если сделал;
- Release benchmark output;
- вывод: map или flat быстрее и почему.

