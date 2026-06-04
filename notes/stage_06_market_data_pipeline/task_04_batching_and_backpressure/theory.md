# Теория 4. Batching And Backpressure

## Почему Batching

Обрабатывать сообщения по одному просто, но иногда дорого.

Batching означает:

```text
взять N сообщений и обработать пачкой
```

Это может уменьшить overhead:

- меньше function call overhead;
- меньше синхронизации;
- лучше cache locality;
- меньше повторных проверок.

## Где Риск

Batching может ухудшить latency отдельного сообщения.

Если сообщение ждет, пока накопится batch, p50 throughput может стать лучше, а
p99 latency хуже.

## Backpressure

Backpressure появляется, когда upstream быстрее downstream.

В нашем pipeline это видно так:

```text
producer хочет push
queue full
producer retry
failed_pushes растет
```

Важно понимать: failed push attempt не равен потерянному сообщению, если producer
делает retry same message.

## Batch Size Trade-Off

Маленький batch:

- ниже latency;
- больше overhead.

Большой batch:

- лучше throughput;
- выше риск tail latency.

## HFT-Мышление

В low-latency системах batching используют осторожно.

Нужно измерять:

- throughput;
- p95/p99 latency;
- failed pushes;
- consumed count;
- checksum.

