# Теория. Fast Cancel And Tombstones

Cancel в order book часто критичен.

Если cancel делает linear search внутри price level, latency зависит от позиции order:

```text
order near front -> fast
order near back -> slow
```

Это плохо для latency tails.

## Location Index

Идея:

```text
order_id -> exact location
```

Например:

```cpp
struct OrderLocation {
    std::uint32_t level_index;
    std::uint32_t slot_index;
};
```

Тогда cancel может сразу найти slot.

## Почему Не Просто erase

Если orders лежат в `std::vector<Order>`, физический `erase` из середины двигает элементы.

Это ломает сохраненные `slot_index` для orders после удаленного элемента.

Можно обновлять индексы, но тогда cancel снова становится дорогим.

## Tombstone

Практичный эксперимент:

```text
cancel = пометить order inactive
```

Например:

```cpp
order.quantity = 0;
```

или отдельный флаг:

```cpp
bool active;
```

Физически order остается в container, но больше не участвует в matching.

## Tradeoff

Плюсы:

- cancel дешевле;
- меньше movement внутри level;
- проще сохранить stable slot index;
- latency cancel стабильнее.

Минусы:

- memory может копиться;
- `best_order()` должен пропускать tombstones;
- `pop_best()` должен чистить front tombstones;
- иногда нужен cleanup/compaction.

## Low-Latency Thinking

В low-latency системах часто выбирают:

```text
сделать важную операцию предсказуемой сейчас
перенести cleanup на контролируемое место позже
```

Это не бесплатная оптимизация.

Это обмен:

```text
cancel latency меньше
book cleanup сложнее
```
