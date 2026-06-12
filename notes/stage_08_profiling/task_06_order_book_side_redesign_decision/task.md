# Задача 6. OrderBookSide Redesign Decision

## Цель

После нескольких маленьких экспериментов принять решение, какой вариант `OrderBookSide` двигать дальше.

Это задача не про новый большой rewrite.

Цель проще:

```text
собрать результаты -> сравнить tradeoffs -> выбрать следующий маленький production-safe шаг
```

К этому моменту у тебя должны быть данные по:

- текущему `OrderBookSide`;
- `reserve()` в текущем `OrderBookSide`;
- flat price levels experiment;
- cancel slot/tombstone experiment, если он был сделан.

## Что Нужно Сделать

Создай отчет:

```text
notes/stage_08_profiling/task_06_order_book_side_redesign_decision/profiling_notes.md
```

Если папка называется `task_06_reuse_without_free_hot_path`, переименовывать её не обязательно. Но содержание задачи теперь именно decision/report.

В отчете сравни варианты:

```text
current map/deque/unordered_map
current + reserve
flat price levels
flat + fast cancel index
```

## Минимальная Таблица

Заполни таблицу:

```text
Variant | Add | Match | Cancel | Allocations | Complexity | Notes
```

Пример:

```text
current OrderBookSide | ok | ok | linear inside level | high | low | simple baseline
flat levels | ? | ? | same index issue | lower map overhead | medium | good for small range
flat + slot index | ? | ? | better cancel | still hash/free | higher | tombstone tradeoff
```

## Requirements

- Не добавляй новую структуру данных в этой задаче.
- Не переписывай `MatchingEngine`.
- Используй уже полученные benchmark/profile outputs.
- Если данных не хватает, явно напиши, какой benchmark нужно повторить.
- Вывод должен выбрать один следующий шаг, а не пять направлений сразу.

## На Что Смотреть

Сравни profile по таким символам:

```text
std::__hash_table::__do_rehash
std::__hash_table::__emplace_unique
std::__hash_table::__erase_unique
operator new
malloc
free
std::deque::erase
std::__move_backward_impl
```

## Главный Вопрос

Ответь в отчете:

```text
Что является следующим самым маленьким изменением, которое реально улучшает OrderBookSide?
```

Возможные ответы:

- заменить `std::map` на flat levels в экспериментальном engine;
- оставить flat только как benchmark result и не тащить в production;
- улучшить cancel index;
- сначала добить benchmark coverage;
- пока не менять код, а снять более чистый profile.

## Что Не Нужно Делать

Пока не надо:

- писать `ReusableOrderStore`;
- писать custom allocator;
- делать memory pool для всего engine;
- делать production rewrite;
- удалять старый `OrderBookSide`.

Если в выводе окажется, что нужен reusable store, это будет отдельная следующая задача.

## Что Записать В Отчет

Минимальный формат:

```text
# OrderBookSide Redesign Decision

## Inputs

- profiles:
- benchmarks:
- tests:

## Current State

- ...

## Options

- ...

## Decision

- ...

## Next Task

- ...
```

## Критерии Готовности

- Есть decision notes.
- Сравнены минимум два варианта.
- Вывод основан на benchmark/profile.
- Выбран один следующий шаг.
- Не добавлен новый большой код без измерения.
- Можно объяснить, почему следующий шаг находится в плане.

## Подсказка

Если хочется сразу написать allocator или pool, остановись и проверь:

```text
мы уже доказали, что именно это следующий bottleneck?
```

Если нет, значит задача пока должна остаться decision/report.
