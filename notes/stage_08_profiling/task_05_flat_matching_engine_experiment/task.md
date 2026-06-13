# Задача 5. Flat Matching Engine Experiment

## Цель

Совместить generic flat buy/sell sides в экспериментальный matching engine и померить его против текущего `MatchingEngine`.

Цель:

```text
FlatOrderBookSide<Buy/Sell> -> FlatMatchingEngine -> benchmark vs current engine
```

## Что Нужно Сделать

Добавь:

```text
include/llp/flat_matching_engine.hpp
```

Минимальный API:

```cpp
class FlatMatchingEngine {
public:
    FlatMatchingEngine(std::uint64_t min_price, std::uint64_t max_price);

    void reserve(std::size_t orders_count);
    bool add(Order order, TradeBuffer& trades);
    bool cancel(std::uint64_t order_id);
    const Order* best_bid() const noexcept;
    const Order* best_ask() const noexcept;
};
```

Используй внутри:

```cpp
FlatOrderBookSide<OrderSide::Buy>
FlatOrderBookSide<OrderSide::Sell>
```

## Requirements

- Matching semantics должны совпадать с текущим `MatchingEngine`.
- Buy crosses best ask.
- Sell crosses best bid.
- Partial fill работает.
- Multiple levels match in price-time order.
- Non-crossing остаток rests.
- Cancel resting order работает.
- Out-of-range orders rejected.
- Используй `TradeBuffer`, чтобы не мешать profile аллокациями `std::vector`.

## Tests

Добавь:

```text
tests/test_flat_matching_engine.cpp
```

Минимум:

- add buy rests when book empty;
- add sell rests when book empty;
- buy crosses ask;
- sell crosses bid;
- partial fill incoming buy;
- partial fill resting ask;
- multiple levels match in price-time order;
- cancel resting order;
- non-crossing order rests;
- out-of-range rejected.

## Benchmark

Добавь:

```text
benchmarks/stage_08_profiling/benchmark_flat_matching_engine.cpp
```

И CMake target:

```cmake
add_llp_benchmark(benchmark_flat_matching_engine
        benchmarks/stage_08_profiling/benchmark_flat_matching_engine.cpp)
```

Сравни:

- current `MatchingEngine`;
- `FlatMatchingEngine`.

Сценарии:

- add resting asks;
- match crossing buys;
- cancel resting asks.

Price range:

```text
100..109
```

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

## На Что Смотреть

Проверь:

- стало ли меньше `std::map` overhead;
- остался ли `unordered_map::erase/free`;
- остался ли `std::deque::erase`;
- изменился ли throughput;
- не ухудшился ли cancel.

## Что Записать В Отчет

Создай:

```text
notes/stage_08_profiling/task_05_flat_matching_engine_experiment/profiling_notes.md
```

В отчете:

- setup;
- benchmark current engine;
- benchmark flat engine;
- profile current;
- profile flat;
- вывод;
- следующий target.

## Критерии Готовности

- Есть `FlatMatchingEngine`.
- Есть tests.
- Есть benchmark.
- Есть profile.
- Вывод основан на цифрах.
- Production `MatchingEngine` не заменен автоматически.

## Что Не Нужно Делать

Пока не надо:

- fast cancel slot index;
- tombstones;
- memory pool;
- production replacement.

Fast cancel станет следующей задачей только если flat matching benchmark покажет, что cancel всё ещё главный bottleneck.
