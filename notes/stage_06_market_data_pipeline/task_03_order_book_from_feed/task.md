# Задача 3. Order Book From Feed

## Цель

Сделать простой aggregated `OrderBook`, который применяет `MarketDataMessage` и
поддерживает best bid / best ask.

Это еще не matching engine. Здесь мы строим состояние рынка из feed events.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/order_book.hpp
tests/test_order_book.cpp
benchmarks/stage_06_market_data_pipeline/benchmark_order_book_updates.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_order_book.cpp
```

Добавь benchmark executable:

```cmake
add_llp_benchmark(benchmark_order_book_updates
        benchmarks/stage_06_market_data_pipeline/benchmark_order_book_updates.cpp)
```

## Interface

Используй namespace `llp`.

```cpp
struct BookLevel {
    std::uint64_t price = 0;
    std::uint32_t quantity = 0;
};

class OrderBook {
public:
    void apply(const MarketDataMessage& msg);

    bool best_bid(BookLevel& out) const noexcept;
    bool best_ask(BookLevel& out) const noexcept;

    std::size_t bid_levels() const noexcept;
    std::size_t ask_levels() const noexcept;

    void clear();
};
```

## Semantics

Для этой задачи:

- `MessageType::Add`: добавить `quantity` к price level.
- `MessageType::Trade`: уменьшить `quantity` на price level.
- `MessageType::Cancel`: уменьшить `quantity` на price level.
- Если после уменьшения quantity стала `0`, удалить price level.
- Если уменьшение больше текущего quantity, удалить level целиком.
- `Side::Bid` обновляет bid side.
- `Side::Ask` обновляет ask side.

## Requirements

- Bid best price = maximum price.
- Ask best price = minimum price.
- Empty side returns `false` from `best_bid/best_ask`.
- `apply` не должен бросать exception для обычных valid messages.
- Для первой версии можно использовать `std::map`.

## Unit Tests

Покрой минимум:

- empty book has no best bid/ask;
- add bid creates best bid;
- add ask creates best ask;
- bid best chooses highest price;
- ask best chooses lowest price;
- add same price aggregates quantity;
- cancel/trade reduces quantity;
- level removed when quantity reaches zero;
- clear resets book.

## Benchmark

Сценарий:

- заранее создай `1'000'000` `MarketDataMessage`;
- применяй их к `OrderBook`;
- считай checksum по best bid/ask после updates или по level counts;
- печатай elapsed и updates/sec.

## Критерии Готовности

- Tests проходят.
- Benchmark запускается в Release.
- Best bid/ask корректны.
- Ты можешь объяснить, почему `std::map` не идеален для low-latency.
- Ты можешь предложить, чем заменить `std::map` при ограниченном price range.

## Подсказка 1

Для bids:

```cpp
std::map<std::uint64_t, std::uint32_t, std::greater<>> bids_;
```

Для asks:

```cpp
std::map<std::uint64_t, std::uint32_t> asks_;
```

Тогда best level - это `begin()`.

## Подсказка 2

Для уменьшения quantity:

```text
если level не найден -> ignore
если current <= delta -> erase
иначе current -= delta
```

## Что Прислать На Review

Пришли:

- `include/llp/order_book.hpp`;
- `tests/test_order_book.cpp`;
- `benchmarks/stage_06_market_data_pipeline/benchmark_order_book_updates.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- вывод Release benchmark.

