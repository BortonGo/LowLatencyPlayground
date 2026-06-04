# Теория 1. Order Book Side

## Matching Engine Vs Market Data Book

Market data book из прошлого этапа хранил aggregated quantity:

```text
price -> total quantity
```

Matching engine должен хранить отдельные orders, потому что есть
price-time priority.

## Price-Time Priority

Правило:

```text
лучшая цена сначала
при одинаковой цене - более старый order сначала
```

Для bid:

```text
выше price лучше
```

Для ask:

```text
ниже price лучше
```

## Price Level

Price level содержит очередь orders:

```text
price -> [order1, order2, order3]
```

Orders на одном price исполняются FIFO.

## Почему Cancel Сложен

Чтобы отменить order быстро, нужно найти его по `order_id`.

Простая первая версия может искать линейно, но это плохо для latency.

Более правильная версия держит index:

```text
order_id -> location
```

В этой задаче можно начать с простой версии, но думать про index.

## HFT-Мышление

Matching engine hot path должен избегать:

- лишних allocations;
- долгих линейных поисков;
- непредсказуемых branches;
- тяжелых erase из середины контейнеров.

Но сначала делаем correctness.

