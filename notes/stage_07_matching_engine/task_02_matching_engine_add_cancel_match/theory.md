# Теория 2. Matching Engine Add Cancel Match

## Что Делает Matching Engine

Matching engine принимает orders и решает:

```text
добавить в книгу
или сразу сматчить с противоположной стороной
```

Buy order матчится с лучшим ask, если:

```text
buy.price >= best_ask.price
```

Sell order матчится с лучшим bid, если:

```text
sell.price <= best_bid.price
```

## Aggressor И Resting Order

Incoming order называется aggressor.

Orders, которые уже лежат в книге, называются resting orders.

Если incoming order полностью не исполнился, остаток может лечь в книгу.

## Trade Event

При match создается trade event:

```text
buy_order_id
sell_order_id
price
quantity
```

Цена обычно берется от resting order.

## Partial Fill

Если incoming quantity больше resting quantity:

```text
resting filled completely
incoming quantity уменьшается
продолжаем матчить дальше
```

Если incoming quantity меньше:

```text
resting quantity уменьшается
incoming filled completely
```

## HFT-Мышление

Matching engine - это latency-critical component.

Но сначала нужно добиться железной correctness:

- price-time priority;
- partial fills;
- cancel;
- no accidental allocation in obvious hot path later.

