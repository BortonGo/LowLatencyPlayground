# Задача 4. Flat Matching Engine Experiment

## Цель

Сравнить текущий `std::map`-based `OrderBookSide` с flat price level storage внутри простого matching engine experiment.

Это не production rewrite.

Цель:

```text
маленький фиксированный price range -> flat levels -> сравнить add/match/cancel profile
```

## Что Нужно Сделать

Сделай экспериментальную реализацию:

```text
include/llp/flat_order_book_side.hpp
include/llp/flat_matching_engine.hpp
```

И benchmark:

```text
benchmarks/stage_08_profiling/benchmark_flat_matching_engine.cpp
```

Добавь benchmark в `CMakeLists.txt`:

```cmake
add_llp_benchmark(benchmark_flat_matching_engine
        benchmarks/stage_08_profiling/benchmark_flat_matching_engine.cpp)
```

## Interface

Минимальный API:

```cpp
template <OrderSide Side>
class FlatOrderBookSide {
public:
    FlatOrderBookSide(std::uint64_t min_price, std::uint64_t max_price);

    bool add(const Order& order);
    bool cancel(std::uint64_t order_id);
    Order* best_order() noexcept;
    const Order* best_order() const noexcept;
    void pop_best();
    std::size_t order_count() const noexcept;
};
```

Для matching engine:

```cpp
class FlatMatchingEngine {
public:
    FlatMatchingEngine(std::uint64_t min_price, std::uint64_t max_price);

    bool add(Order order, TradeBuffer& trades);
    bool cancel(std::uint64_t order_id);
};
```

## Requirements

- Price range фиксированный, например `100..109`.
- Out-of-range orders возвращают `false`.
- Buy side ищет best bid от high price к low price.
- Sell side ищет best ask от low price к high price.
- FIFO внутри одного price level сохраняется.
- Semantics matching должны совпадать с `MatchingEngine` для тестовых сценариев.
- Используй `TradeBuffer`, чтобы trade output не добавлял `std::vector` allocation noise.

## Tests

Добавь тесты:

```text
tests/test_flat_matching_engine.cpp
```

Минимум:

- buy rests when book is empty;
- sell rests when book is empty;
- buy crosses ask;
- sell crosses bid;
- multiple levels match in price-time order;
- cancel resting order;
- out-of-range order rejected.

## Benchmark

Сравни:

- текущий `MatchingEngine`;
- новый `FlatMatchingEngine`.

Сценарии:

- add resting asks;
- match crossing buys;
- cancel resting asks.

Используй тот же workload, что в `benchmark_matching_engine`, но price range оставь маленьким.

## Profiling

Собери:

```text
cmake --build cmake-build-profile --target benchmark_flat_matching_engine
```

Сними:

```text
./cmake-build-profile/benchmark_flat_matching_engine &
sample $! 10 -file profile_flat_matching_engine.txt
```

## На Что Смотреть В Profile

Сравни:

- исчез ли `std::map` overhead;
- стало ли меньше pointer chasing;
- остался ли `unordered_map` allocation/free;
- остался ли `std::deque` allocation;
- изменился ли throughput.

## Что Записать В Отчет

Создай:

```text
notes/stage_08_profiling/task_04_flat_matching_engine_experiment/profiling_notes.md
```

В отчете напиши:

- setup;
- benchmark results;
- profile before/after;
- что стало лучше;
- что осталось плохо;
- ограничения flat storage.

## Критерии Готовности

- Есть `FlatOrderBookSide`.
- Есть `FlatMatchingEngine`.
- Есть тесты.
- Есть benchmark map vs flat.
- Есть profile.
- В notes написан честный вывод.
- Ты можешь объяснить, почему flat storage подходит не для всех инструментов.

## Что Не Нужно Делать

Пока не надо:

- удалять старый `MatchingEngine`;
- делать dynamic price range;
- писать allocator;
- делать идеальный production order book.

## Подсказка

Flat storage выигрывает, когда price range маленький и известный.

Если price range большой или sparse, простой `vector<levels>` может тратить слишком много памяти.
