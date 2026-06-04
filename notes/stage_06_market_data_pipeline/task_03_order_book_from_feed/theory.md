# Теория 3. Order Book From Feed

## Зачем Нужен Order Book

Market data parser сам по себе только превращает bytes в struct.

Следующий слой - применить сообщения к состоянию рынка:

```text
message stream -> order book state
```

В реальных системах order book отвечает на вопросы:

- какая лучшая bid цена;
- какая лучшая ask цена;
- сколько quantity стоит на уровне;
- что изменилось после update.

## Упрощенная Модель

В этой задаче мы делаем не full matching engine, а простой aggregated book:

```text
price -> total quantity
```

Отдельные orders внутри price level пока не храним.

Это похоже на L2 market data: нам важны price levels, а не order ids.

## Bid И Ask

Bid side:

```text
лучшая цена = максимальная price
```

Ask side:

```text
лучшая цена = минимальная price
```

Поэтому для bid/ask удобно иметь разные comparators.

## Containers

Для первой версии можно использовать `std::map`.

Это не самый быстрый вариант, но он:

- понятный;
- ordered;
- хорошо подходит для correctness first.

Позже можно будет обсуждать flat arrays, price buckets и cache-friendly layout.

## HFT-Мышление

Order book update - это hot path.

Даже если первая версия на `std::map`, думай:

- сколько allocations происходит;
- сколько branches;
- сколько pointer chasing;
- можно ли заранее ограничить price range;
- как быстро получить best bid/ask.

