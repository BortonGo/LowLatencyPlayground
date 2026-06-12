# Задача 5. Fast Cancel Slot Index

## Цель

Сделать cancel дешевле и предсказуемее в экспериментальном order book.

Сейчас cancel обычно делает:

```text
order_id -> price/index -> linear search внутри level -> erase
```

Цель:

```text
order_id -> точная позиция order -> cancel без полного поиска по level
```

## Что Нужно Сделать

Добавь экспериментальный вариант book side:

```text
include/llp/flat_order_book_side_with_cancel_index.hpp
```

И benchmark:

```text
benchmarks/stage_08_profiling/benchmark_fast_cancel_slot_index.cpp
```

Добавь benchmark в `CMakeLists.txt`.

## Data Model

Минимальный индекс:

```cpp
struct OrderLocation {
    std::uint32_t level_index;
    std::uint32_t slot_index;
};
```

Храни:

```cpp
std::unordered_map<std::uint64_t, OrderLocation> order_locations_;
```

Для levels можно использовать:

```cpp
std::vector<std::vector<Order>>
```

или другой контейнер, если объяснишь tradeoff.

## Cancel Semantics

Для этой задачи разрешен `tombstone cancel`:

```text
найти slot -> quantity = 0 -> удалить из index
```

Физически удалять order из vector не обязательно.

`best_order()` и `pop_best()` должны пропускать canceled/filled orders.

## Requirements

- Cancel не должен делать linear search по всему level.
- FIFO для активных orders должен сохраняться.
- `best_order()` не должен возвращать canceled order.
- `pop_best()` должен очищать front tombstones.
- Duplicate order id rejected.
- `order_count()` считает только активные orders.
- Существующие production классы не ломать.

## Tests

Добавь тесты:

```text
tests/test_flat_order_book_side_with_cancel_index.cpp
```

Минимум:

- add and best order;
- cancel first order;
- cancel middle order;
- cancel missing order;
- duplicate id rejected after active add;
- same id can be added again after cancel, если ты выберешь такую semantic;
- pop best skips canceled orders;
- FIFO active orders preserved.

## Benchmark

Сравни:

- текущий `OrderBookSide`;
- flat side без slot index;
- flat side with cancel index.

Сценарии:

- cancel in FIFO order;
- cancel in reverse order;
- cancel random ids;
- add/cancel repeated.

## Profiling

Сними profile:

```text
sample $! 10 -file profile_fast_cancel_slot_index.txt
```

## На Что Смотреть

Хочется увидеть меньше:

```text
std::deque::erase
std::__move_backward_impl
linear scan внутри cancel
```

Но могут остаться:

```text
unordered_map::erase
free
operator new
```

Это нормально для этой задачи.

## Что Записать В Отчет

Создай:

```text
notes/stage_08_profiling/task_05_fast_cancel_slot_index/profiling_notes.md
```

Напиши:

- какие cancel scenarios быстрее;
- где tombstones помогают;
- где tombstones вредят;
- что осталось в profile;
- какой следующий target.

## Критерии Готовности

- Есть experimental book side with slot index.
- Cancel не ищет order линейно внутри level.
- Tests проходят.
- Benchmark есть.
- Profile есть.
- В notes объяснён tombstone tradeoff.

## Что Не Нужно Делать

Пока не надо:

- делать production-ready memory reclamation;
- compact levels на каждом cancel;
- писать lock-free структуру;
- полностью убирать `unordered_map`.

## Подсказка

Tombstone cancel часто делает cancel быстрым, но переносит работу на:

```text
best_order / pop_best / periodic cleanup
```

Это нормальный low-latency tradeoff: иногда лучше сделать hot cancel predictably cheap.
