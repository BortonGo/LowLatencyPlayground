# Теория. Integration Decision

После нескольких experiments появляется соблазн взять все хорошие идеи сразу:

- dense id index;
- vector price level;
- tombstones;
- custom allocator;
- flat matching engine.

Но если встроить все одновременно, benchmark станет трудно объяснить.

## Хорошая Integration Strategy

Хорошая стратегия:

```text
one change -> one benchmark -> one profile -> one decision
```

Так можно понять, что реально помогло.

## Что Сравнивать

Для каждого варианта нужно смотреть:

- насколько он ускоряет hot path;
- насколько усложняет correctness;
- какие edge cases добавляет;
- какой benchmark подтвердит результат;
- можно ли откатить изменение без большого churn.

## Почему Decision Task Повторяется

Decision task не тормозит работу.

Она защищает от случайного большого rewrite.

В low-latency коде это особенно важно: сложная структура может выглядеть быстрее в одном benchmark, но стать хуже в другом workload.

## Цель

Цель этой задачи:

```text
выбрать один следующий integration step
```

Не лучший теоретически возможный дизайн, а следующий проверяемый шаг.
