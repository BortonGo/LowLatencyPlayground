# Теория. Matching Engine Latency Histogram

Throughput отвечает на вопрос:

```text
сколько операций в секунду?
```

Latency отвечает на другой вопрос:

```text
сколько занимает одна операция?
```

В low-latency системах важна не только средняя задержка, а хвосты:

```text
median / p95 / p99 / max
```

Cancel может иметь неплохую среднюю задержку на маленькой книге, но плохой tail latency, если иногда приходится сканировать длинный level.

## Почему Нужен Histogram/Stats

Один `elapsed / N` скрывает выбросы.

Например:

```text
999 операций по 100 ns
1 операция 1 ms
```

Average выглядит терпимо, но p99/max покажут проблему.

## Что Мерить

Для matching engine отдельно измеряем:

- add resting order latency;
- crossing match latency;
- cancel latency.

Подготовку данных не включаем в measurement.

