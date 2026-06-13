# Задача 3. Finish Flat Ask Side Benchmark

## Цель

Дожать уже существующий эксперимент:

```text
include/llp/order_book_side_flat.hpp
benchmarks/stage_07_matching_engine/benchmark_price_level_storage.cpp
tests/test_order_book_side_flat.cpp
```

Не начинать новую структуру с нуля.

Цель:

```text
текущий std::map OrderBookSide vs FlatAskBookSide -> честный benchmark -> profile -> вывод
```

## Что Нужно Сделать

Проверь и доведи `FlatAskBookSide` до состояния, где его можно честно сравнивать с:

```cpp
llp::OrderBookSide<llp::OrderSide::Sell>
```

Минимально:

- добавить `reserve(std::size_t orders_count)` в `FlatAskBookSide`;
- внутри `reserve()` подготовить `order_level_index`;
- в benchmark-е вызывать `reserve()` и для flat side, и для обычного side;
- добавить cancel scenario в `benchmark_price_level_storage`;
- проверить, что benchmark не меряет генерацию данных;
- оставить checksum.

## Benchmark Scenarios

Используй существующий:

```text
benchmark_price_level_storage
```

Сценарии:

- add resting asks;
- best lookup loop;
- pop best loop;
- cancel resting asks.

Сравни:

- `OrderBookSide<OrderSide::Sell>`;
- `FlatAskBookSide`.

Price range:

```text
100..109
```

Количество заявок можно поднять, если `sample` не успевает поймать hot path.

## Требования

- Production `OrderBookSide` не ломать.
- `FlatAskBookSide` остается ask-only.
- Out-of-range orders rejected.
- FIFO внутри price level сохраняется.
- `best_order()` возвращает lowest non-empty level.
- `pop_best()` корректно пропускает пустые lower levels.
- Существующие тесты проходят.

## Profiling

Собери:

```text
cmake --build cmake-build-profile --target benchmark_price_level_storage
```

Сними:

```text
./cmake-build-profile/benchmark_price_level_storage &
sample $! 10 -file profile_price_level_storage.txt
```

## На Что Смотреть В Profile

Сравни:

- виден ли `std::map` overhead у текущего `OrderBookSide`;
- виден ли `std::deque::__add_back_capacity`;
- виден ли `std::deque::erase`;
- остался ли `unordered_map::erase/free`;
- уменьшился ли общий allocator noise у flat side.

## Что Записать В Отчет

Создай:

```text
notes/stage_08_profiling/task_03_finish_flat_ask_side_benchmark/profiling_notes.md
```

Минимальный формат:

```text
# Flat Ask Side Benchmark Notes

## Setup

Сборка:
Benchmark:
Инструмент:
Команда:

## Changes

- ...

## Results

- map side:
- flat side:

## Profile

- ...

## Вывод

- ...

## Следующая Цель

- ...
```

## Критерии Готовности

- `FlatAskBookSide::reserve()` есть.
- `benchmark_price_level_storage` сравнивает flat и map честно.
- Есть add/best/pop/cancel scenarios.
- Есть benchmark output.
- Есть profile.
- В notes написано, что именно стало лучше или хуже.
- Ты можешь объяснить, почему flat side выигрывает или не выигрывает.

## Что Не Нужно Делать

Пока не надо:

- делать bid side;
- делать full matching engine;
- писать allocator;
- удалять `std::map` из production side.

## Что Прислать На Review

Пришли:

- изменения в `order_book_side_flat.hpp`;
- изменения в `benchmark_price_level_storage.cpp`;
- benchmark output;
- profile observations;
- честный вывод.
