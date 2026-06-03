# Теория 2. No-Allocation Market Data Pipeline

## Что Такое Pipeline

Pipeline - это цепочка этапов:

```text
bytes -> parser -> event/message -> handler -> stats/order book
```

На каждом этапе можно случайно добавить latency:

- allocation;
- copy;
- lock;
- branch;
- cache miss.

## No Allocation In Hot Path

Подготовить память до запуска - нормально.

Плохо, когда на каждое сообщение происходит:

```cpp
new
std::vector::push_back без reserve
std::string creation
std::function allocation
```

В hot path лучше работать с уже выделенными buffers и plain structs.

## Backpressure

Если producer быстрее consumer, очередь заполняется.

В учебной версии можно считать:

```text
failed_pushes
```

Это простая метрика backpressure.

## Pipeline Latency

Можно измерять:

- total throughput;
- parse latency;
- end-to-end latency;
- failed pushes;
- p95/p99.

В этой задаче фокус: no allocation и понятный pipeline flow.

## HFT-Мышление

Market data pipeline должен быть предсказуемым.

Чем меньше скрытых действий в hot path, тем проще объяснить latency spikes.

