# Задача 2. Matching Engine Add Cancel Match

## Цель

Сделать минимальный `MatchingEngine`, который умеет:

- add order;
- cancel order;
- match incoming order against opposite side;
- возвращать trade events.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/matching_engine.hpp
tests/test_matching_engine.cpp
benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp
```

## CMake

Добавь test file:

```cmake
tests/test_matching_engine.cpp
```

Добавь benchmark executable:

```cmake
add_llp_benchmark(benchmark_matching_engine
        benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp)
```

## Interface

```cpp
struct Trade {
    std::uint64_t buy_order_id = 0;
    std::uint64_t sell_order_id = 0;
    std::uint64_t price = 0;
    std::uint32_t quantity = 0;
};

class MatchingEngine {
public:
    bool add(Order order, std::vector<Trade>& trades);
    bool cancel(std::uint64_t order_id);

    const Order* best_bid() const noexcept;
    const Order* best_ask() const noexcept;
};
```

## Requirements

- Buy order matches while `best_ask.price <= buy.price`.
- Sell order matches while `best_bid.price >= sell.price`.
- Trade price = resting order price.
- Partial fills work.
- Fully filled resting orders are removed.
- Unfilled remainder is added to own side.
- `cancel` can cancel resting orders.
- `trades` vector is passed by caller. Engine should not allocate it internally.

## Unit Tests

Покрой минимум:

- add buy with empty book rests on bid side;
- add sell with empty book rests on ask side;
- buy crosses ask and creates trade;
- sell crosses bid and creates trade;
- partial fill incoming;
- partial fill resting;
- multiple levels match in price-time order;
- cancel resting order;
- cancel already filled/missing order returns false.

## Benchmark

Сценарий:

- заранее подготовь orders;
- часть orders resting, часть crossing;
- заранее `reserve` для `std::vector<Trade>`;
- измерь add/cancel/match throughput;
- печатай:
  - orders processed;
  - trades generated;
  - checksum;
  - elapsed;
  - ops/sec.

## Критерии Готовности

- Tests проходят.
- Matching logic корректная.
- Trades generated correctly.
- Ты можешь объяснить resting/aggressor.
- Ты можешь объяснить partial fill.
- Ты можешь объяснить, где сейчас есть performance bottlenecks.

## Подсказка 1

Можно использовать `OrderBookSide<OrderSide::Buy>` и
`OrderBookSide<OrderSide::Sell>` из предыдущей задачи.

## Подсказка 2

Для match тебе понадобится уметь уменьшать quantity у best resting order. Если
текущий `OrderBookSide` не дает mutable access, можно расширить API аккуратно.

## Подсказка 3

В tests начинай с маленьких чисел:

```text
ask: price 100 qty 10
incoming buy: price 101 qty 4
trade: price 100 qty 4
ask remains qty 6
```

## Что Прислать На Review

Пришли:

- `include/llp/matching_engine.hpp`;
- `tests/test_matching_engine.cpp`;
- `benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- вывод Release benchmark.

