# Теория. Clean Profile

Profile полезен только тогда, когда он показывает тот код, который мы хотим изучить.

Если benchmark короткий или в нем много работы вокруг measured loop, `sample` легко поймает:

- запуск процесса;
- генерацию данных;
- сортировку latency samples;
- печать;
- destructor/free после окончания сценария.

Это не значит, что profile бесполезен. Но выводы из него должны быть осторожными.

## Hot Path

Hot path для matching engine это не весь процесс.

Для нас hot path это:

```text
add order
match order
pop best
cancel order
write trade to preallocated buffer
```

Все остальное нужно либо вынести из measured section, либо честно пометить как benchmark overhead.

## Почему LatencyStats Мешает Profile

`LatencyStats::median()` и `LatencyStats::percentile()` могут сортировать samples.

Если profile снимается слишком долго или попадает на printing phase, в отчете появятся:

```text
std::__introsort
LatencyStats::median
LatencyStats::percentile
```

Это полезно для понимания benchmark overhead, но не для redesign `OrderBookSide`.

## Хороший Benchmark

Хороший benchmark:

- заранее генерирует orders;
- заранее заполняет book, если сценарий требует resting liquidity;
- заранее выделяет trade buffer;
- измеряет только loop;
- печатает после loop;
- использует checksum;
- не делает аллокации в measured path без необходимости.

## Цель

Цель этой задачи не ускорить код.

Цель:

```text
получить profile, которому можно верить
```

После этого уже можно выбирать следующий маленький redesign step.
