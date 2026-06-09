# Теория. Price Level Storage Experiment

Сейчас `OrderBookSide` хранит levels в:

```cpp
std::map<price, std::deque<Order>>
```

`std::map` удобен:

- цены отсортированы;
- best level легко взять через `begin()`;
- любой price можно добавить.

Но `std::map` pointer-heavy:

- узлы лежат отдельно в heap;
- traversal плохо дружит с cache locality;
- каждый новый level обычно allocation.

## Flat Storage

Если price range известен и маленький, можно хранить levels в массиве/vector:

```text
price 100 -> index 0
price 101 -> index 1
...
```

Тогда доступ к level становится cache-friendly.

Минус: нужно знать диапазон цен или иметь mapping.

## HFT Tradeoff

В реальных системах часто используют специализированные структуры под конкретный инструмент:

```text
tick size
price range
max levels
known constraints
```

Чем больше мы знаем о домене, тем меньше платим за универсальность.

