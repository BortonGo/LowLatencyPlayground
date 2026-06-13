# Теория. From Ask-Only To Generic Flat Side

Ask-only experiment полезен, но matching engine требует две стороны:

```text
buy side
sell side
```

Разница между ними не в storage, а в направлении поиска best price.

## Sell Side

Для sell side:

```text
best ask = lowest price
```

Если levels лежат в vector:

```text
scan low -> high
```

## Buy Side

Для buy side:

```text
best bid = highest price
```

Значит:

```text
scan high -> low
```

## Почему Нужен Отдельный Шаг

Можно было бы сразу писать `FlatMatchingEngine`, но тогда ошибки смешаются:

- баги buy side;
- баги sell side;
- баги matching logic;
- баги benchmark-а.

Лучше сначала сделать generic book side и покрыть его тестами.

## Что Останется Ограничением

Flat side всё ещё требует:

- fixed min price;
- fixed max price;
- разумно маленький dense range.

Это осознанное ограничение эксперимента.

Мы проверяем:

```text
может ли flat storage заменить std::map для нашего controlled workload
```
