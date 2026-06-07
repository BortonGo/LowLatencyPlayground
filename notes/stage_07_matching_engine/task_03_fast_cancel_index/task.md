# Задача 3. Fast Cancel Index

## Цель

Ускорить `cancel(order_id)` в `OrderBookSide` / `MatchingEngine`, добавив простой индекс:

```text
order_id -> price
```

После этого cancel не должен сканировать все price levels.

## Нужные Файлы

Работай с текущими файлами:

```text
include/llp/order_book_side.hpp
include/llp/matching_engine.hpp
tests/test_order_book_side.cpp
tests/test_matching_engine.cpp
benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp
```

## Interface

Публичный interface можно оставить прежним:

```cpp
bool add(const Order& order);
bool cancel(std::uint64_t order_id);
Order* best_order() noexcept;
const Order* best_order() const noexcept;
void pop_best();
```

Внутри `OrderBookSide` добавь индекс:

```cpp
std::unordered_map<std::uint64_t, std::uint64_t> order_price_index_;
```

## Requirements

- `add` добавляет order в price level и в index.
- `cancel` сначала ищет order id в index.
- Если id не найден, `cancel` возвращает `false`.
- Если id найден, `cancel` находит price level по price.
- Внутри найденного level можно линейно найти order.
- После успешного cancel order удаляется из deque и из index.
- Если price level стал пустым, он удаляется из `levels_`.
- `pop_best` должен удалять fully filled best order из index.
- Старые тесты должны проходить.

## Unit Tests

Добавь или усили тесты:

- `cancel` existing order returns true;
- `cancel` missing order returns false;
- после `cancel` order больше нельзя отменить второй раз;
- после `pop_best` filled order больше нельзя отменить;
- cancel order на одном price level не ломает FIFO других orders;
- cancel последнего order на price level удаляет level.

## Benchmark

Используй текущий:

```text
benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp
```

Сценарий `CANCEL RESTING ONLY` должен стать быстрее.

Печатай:

- operations;
- successful cancels;
- checksum;
- elapsed;
- ops/sec.

## Критерии Готовности

- Tests проходят.
- `cancel` использует index, а не полный scan всей книги.
- `pop_best` корректно чистит index.
- Benchmark показывает ускорение cancel.
- Ты можешь объяснить, почему `order_id -> price` быстрее, но все еще не идеально.

## Подсказка 1

В `add` не забудь проверить duplicate id. Если id уже есть в index, лучше вернуть `false`.

## Подсказка 2

В `cancel` после нахождения price:

```text
auto level_it = levels_.find(price)
```

Потом сканируй только `level_it->second`.

## Подсказка 3

В `pop_best` best order находится в:

```text
levels_.begin()->second.front()
```

Перед `pop_front()` сохрани `id`, чтобы удалить его из index.

## Что Прислать На Review

Пришли:

- `include/llp/order_book_side.hpp`;
- измененные tests;
- вывод `ctest`;
- вывод Release benchmark до/после, если сохранил старые цифры.

