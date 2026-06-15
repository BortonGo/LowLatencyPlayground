# Задача 10. Flat Side Integration Decision

## Цель

После clean profile, order id index experiment и price level container experiment принять решение:

```text
что именно встраивать в FlatMatchingEngine следующим маленьким шагом
```

Это снова decision task, а не большой rewrite.

## Inputs

Используй результаты:

- task 7 clean hot path profile;
- task 8 order id index experiment;
- task 9 price level container experiment;
- текущий task 5 flat matching benchmark.

## Что Нужно Сделать

Создай отчет:

```text
notes/stage_08_profiling/task_10_flat_side_integration_decision/profiling_notes.md
```

Минимальная таблица:

```text
Option | Expected Win | Risk | Data Support | Next Benchmark
```

Сравни варианты:

- keep current flat side;
- integrate dense order id index;
- change price level container;
- add tombstones;
- stop and keep flat side only as experiment.

## Decision

Выбери один следующий шаг.

Примеры допустимых решений:

- integrate dense id index into `PriceLevelArrayBookSide`;
- make tombstone price level experiment;
- keep current implementation because benchmark win is not enough;
- improve benchmark coverage before more code.

## Критерии Готовности

- Есть decision report.
- Использованы результаты task 7-9.
- Выбран один следующий шаг.
- Решение маленькое и измеримое.
- Не сделан большой rewrite.
- Можно объяснить, почему это продолжает Stage 8.

## Что Не Нужно Делать

Пока не надо:

- заменять production `MatchingEngine`;
- удалять `OrderBookSide`;
- писать allocator;
- писать memory pool;
- делать несколько redesign сразу.
