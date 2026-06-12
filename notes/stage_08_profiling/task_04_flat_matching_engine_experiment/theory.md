# Теория. Flat Price Levels

Текущий `OrderBookSide` хранит price levels так:

```cpp
std::map<std::uint64_t, std::deque<Order>>
```

Это удобно, потому что `std::map` всегда держит цены отсортированными.

Но у этого есть цена:

- каждый node обычно живёт отдельно в heap;
- traversal идёт по указателям;
- cache locality слабее;
- новый price level может выделять память.

## Flat Storage

Если price range маленький и известный, можно сделать:

```text
index = price - min_price
```

И хранить:

```cpp
std::vector<std::deque<Order>> levels_;
```

Тогда доступ к level становится прямым:

```text
price 100 -> levels[0]
price 101 -> levels[1]
price 102 -> levels[2]
```

## Best Price

Для sell side:

```text
best ask = первый non-empty level от low к high
```

Для buy side:

```text
best bid = первый non-empty level от high к low
```

Если range всего 10 levels, линейный scan может быть дешевле `std::map`.

## Tradeoff

Flat storage быстрее и проще для маленького dense range.

Но он хуже, если:

- price range огромный;
- цены sparse;
- диапазон заранее неизвестен;
- нужно поддерживать много инструментов с разными tick/price bounds.

В реальном low-latency коде часто используют специализированные структуры под инструмент:

```text
known tick size
known max levels
known price bounds
```

Чем больше доменных ограничений известно заранее, тем меньше нужно платить за универсальность.

## Что Всё Ещё Останется

Flat levels убирают `std::map`, но не обязательно убирают все allocation:

- `std::deque` всё ещё может выделять blocks;
- `unordered_map` index всё ещё node-based;
- `erase` из index всё ещё может делать `free`;
- cancel внутри level может двигать элементы.

Поэтому flat storage это шаг, а не финальная форма.
