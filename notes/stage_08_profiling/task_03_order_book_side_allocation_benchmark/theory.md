# Теория. Isolating Allocation Noise

Когда profiling полного `MatchingEngine` показывает allocator hotspots, не всегда сразу понятно, кто именно виноват:

- matching loop;
- `OrderBookSide::add`;
- `OrderBookSide::cancel`;
- `OrderBookSide::pop_best`;
- генерация входных данных;
- destruction после benchmark-а.

Поэтому следующий шаг после общего profile:

```text
изолировать компонент и измерить его отдельно
```

## Почему Полный Engine Шумный

`MatchingEngine::add` делает сразу несколько вещей:

- ищет best order;
- создаёт trade;
- уменьшает quantity;
- удаляет filled order;
- иногда добавляет остаток в книгу;
- трогает `std::vector<Trade>` или `TradeBuffer`;
- вызывает `OrderBookSide`.

Если смотреть только на общий profile, легко ошибиться и оптимизировать не то место.

## Что Мы Хотим Узнать

Для текущего `OrderBookSide` важно отделить:

```text
add cost
cancel cost
pop_best cost
destruction cost
```

`add` может шуметь из-за:

- `std::map` node allocation для нового price level;
- `std::deque` block allocation;
- `std::unordered_map` node allocation;
- `unordered_map` rehash, если нет reserve.

`cancel` может шуметь из-за:

- поиска order внутри price level;
- `std::deque::erase`;
- `unordered_map::erase`;
- `free` при удалении hash node.

`pop_best` может шуметь из-за:

- `unordered_map::erase`;
- `deque::pop_front`;
- удаления empty price level из `std::map`.

## Почему Reserve Помогает Не Полностью

`unordered_map::reserve()` заранее готовит bucket table.

Это уменьшает:

```text
std::__hash_table::__do_rehash
```

Но стандартный `unordered_map` обычно хранит каждый элемент в отдельной node.

Поэтому insert всё ещё может делать:

```text
operator new
malloc
```

А erase всё ещё может делать:

```text
free
```

Это нормальный результат для этой структуры данных.

## Как Читать Результат

Если после `reserve()` profile показывает:

```text
__do_rehash почти нет
operator new остался
free остался
```

значит задача с `reserve()` сработала.

Следующая проблема уже не rehash, а node-based containers.
