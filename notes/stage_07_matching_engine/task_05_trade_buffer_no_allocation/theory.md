# Теория. No Allocation Trade Buffer

В текущем engine trades пишутся в:

```cpp
std::vector<Trade>& trades
```

Если caller заранее сделал `reserve`, обычно аллокаций в hot path не будет. Но API все равно допускает рост vector capacity внутри `push_back`.

В low-latency коде часто делают иначе: caller заранее дает фиксированный буфер, а hot path только пишет в готовую память.

## Fixed Buffer

Идея:

```text
Trade storage[N]
TradeBuffer view(storage)
engine.add(order, buffer)
```

Если buffer заполнен, операция должна аккуратно вернуть `false`, а не выделять память.

## Почему Это Полезно

Такой API заставляет думать о backpressure:

```text
что делать, если output buffer заполнен?
```

В реальных системах это не мелочь. Переполненный буфер может означать, что downstream не успевает.

