# Задача 5. Trade Buffer No Allocation

## Цель

Сделать альтернативный output buffer для trades без heap allocation в hot path.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/trade_buffer.hpp
include/llp/matching_engine.hpp
tests/test_trade_buffer.cpp
tests/test_matching_engine.cpp
```

Если хочешь, можно держать `TradeBuffer` рядом с `Trade`, но отдельный header будет чище.

## Interface

Вариант без `std::span`:

```cpp
class TradeBuffer {
public:
    TradeBuffer(Trade* data, std::size_t capacity) noexcept;

    bool push(const Trade& trade) noexcept;
    void clear() noexcept;

    std::size_t size() const noexcept;
    std::size_t capacity() const noexcept;
    bool full() const noexcept;

    const Trade& operator[](std::size_t index) const;
};
```

В `MatchingEngine` добавь overload:

```cpp
bool add(Order order, TradeBuffer& trades);
```

Старый overload со `std::vector<Trade>&` пока можно оставить.

## Requirements

- `TradeBuffer` не владеет памятью.
- `TradeBuffer::push` не аллоцирует.
- Если buffer заполнен, `push` возвращает `false`.
- Если во время match trade не помещается в buffer, `MatchingEngine::add` возвращает `false`.
- Tests должны проверять overflow.
- Старые vector-based tests должны продолжать проходить.

## Unit Tests

Покрой:

- empty buffer starts size 0;
- push increases size;
- clear resets size;
- push over capacity returns false;
- matching writes trade into `TradeBuffer`;
- matching returns false if `TradeBuffer` capacity is too small.

## Benchmark

Опционально сравни:

- `std::vector<Trade>` with reserve;
- `TradeBuffer` over preallocated array.

Печатай:

- trades generated;
- checksum;
- elapsed;
- ops/sec.

## Критерии Готовности

- Tests проходят.
- `TradeBuffer` не делает heap allocation.
- `MatchingEngine::add(order, TradeBuffer&)` работает.
- Overflow buffer обрабатывается явно.
- Ты можешь объяснить, почему fixed output buffer важен для latency.

## Подсказка 1

`TradeBuffer` может хранить:

```cpp
Trade* data_;
std::size_t capacity_;
std::size_t size_;
```

## Подсказка 2

В `push`:

```text
if size == capacity -> false
data[size++] = trade
```

## Подсказка 3

Сначала напиши tests для самого `TradeBuffer`, потом подключай его к `MatchingEngine`.

## Что Прислать На Review

Пришли:

- `include/llp/trade_buffer.hpp`;
- изменения в `matching_engine.hpp`;
- tests;
- вывод `ctest`;
- benchmark, если сделал.

