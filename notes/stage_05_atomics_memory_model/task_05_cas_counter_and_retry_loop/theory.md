# Теория 5. CAS And Retry Loop

## Что Такое CAS

CAS означает compare-and-swap или compare-exchange.

Идея:

```text
если atomic сейчас равен expected,
замени его на desired,
иначе скажи, какое значение там было на самом деле
```

В C++ это:

```cpp
compare_exchange_weak
compare_exchange_strong
```

## Почему Нужен Retry Loop

CAS может не сработать, если другой thread успел изменить значение.

Тогда нужно перечитать текущее значение, пересчитать desired и попробовать снова:

```cpp
auto expected = value.load();
while (!value.compare_exchange_weak(expected, expected + 1)) {
}
```

Важная деталь: при failed CAS `expected` обновляется текущим значением atomic.

## Weak Vs Strong

`compare_exchange_weak` может иногда падать spuriously, даже если значение
совпало.

Поэтому weak обычно используют в loop.

`compare_exchange_strong` реже имеет spurious failures, но не значит
"быстрее/лучше всегда".

## CAS Под Contention

CAS loop может быть хуже `fetch_add`, потому что при contention threads много раз
проваливаются и повторяют работу.

Это важный урок:

```text
lock-free не означает wait-free
lock-free не означает быстрее
```

## HFT-Мышление

CAS полезен для lock-free структур, но retry loop в hot path может создавать
latency spikes.

Нужно смотреть не только throughput, но и количество failed attempts.

