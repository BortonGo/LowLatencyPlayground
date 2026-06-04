# Задача 1. Order Book Side

## Цель

Сделать одну сторону книги заявок: bid side или ask side.

Нужно реализовать price-time priority для orders на одной стороне.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/order.hpp
include/llp/order_book_side.hpp
tests/test_order_book_side.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_order_book_side.cpp
```

## Interface

Используй namespace `llp`.

```cpp
enum class OrderSide : std::uint8_t {
    Buy = 1,
    Sell = 2
};

struct Order {
    std::uint64_t id = 0;
    std::uint64_t price = 0;
    std::uint32_t quantity = 0;
    OrderSide side = OrderSide::Buy;
    std::uint64_t sequence = 0;
};
```

Для side:

```cpp
template <OrderSide Side>
class OrderBookSide {
public:
    bool add(const Order& order);
    bool cancel(std::uint64_t order_id);

    bool empty() const noexcept;
    std::size_t order_count() const noexcept;
    std::size_t level_count() const noexcept;

    const Order* best_order() const noexcept;
};
```

## Requirements

- Buy side best price = highest price.
- Sell side best price = lowest price.
- Orders на одном price исполняются FIFO.
- `add` возвращает `false`, если `order.id == 0` или `quantity == 0`.
- `cancel` возвращает `false`, если order не найден.
- Если после cancel price level пустой, удалить level.

## Unit Tests

Покрой минимум:

- empty side has no best order;
- add one order;
- buy side chooses highest price;
- sell side chooses lowest price;
- same price keeps FIFO order;
- cancel existing order;
- cancel missing order returns false;
- level removed after last order canceled;
- invalid order rejected.

## Критерии Готовности

- Tests проходят.
- Price-time priority работает.
- Ты можешь объяснить, почему линейный cancel плох.
- Ты можешь предложить index для быстрого cancel.

## Подсказка 1

Для первой версии можно использовать:

```cpp
std::map<std::uint64_t, std::deque<Order>, Comparator> levels_;
```

`std::deque` удобен для FIFO на одном price.

## Подсказка 2

`best_order()`:

```text
если levels empty -> nullptr
иначе levels.begin()->second.front()
```

## Подсказка 3

Cancel в первой версии можно сделать линейным проходом по levels и orders. Мы
оптимизируем это позже.

## Что Прислать На Review

Пришли:

- `include/llp/order.hpp`;
- `include/llp/order_book_side.hpp`;
- `tests/test_order_book_side.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`.

