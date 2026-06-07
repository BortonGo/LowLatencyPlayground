# Теория. Cancel Benchmark Before After

Оптимизация без измерения легко превращается в угадайку. В low-latency разработке важно не просто "поменять структуру", а показать:

```text
было -> стало -> почему стало именно так
```

Для cancel это особенно важно, потому что средняя скорость может улучшиться, но хвосты latency все еще могут быть плохими.

## Что Мерить

Для этой задачи достаточно throughput:

```text
operations / elapsed_seconds
```

Но важно считать только ту работу, которую ты реально хочешь измерить.

Например, если benchmark называется `CANCEL RESTING ONLY`, то подготовка книги должна быть до таймера:

```text
prepare book
start timer
cancel orders
stop timer
```

## Checksum

Checksum нужен, чтобы компилятор не выкинул работу и чтобы было видно, что операции реально происходили.

Для cancel лучше считать только successful cancels:

```text
if cancel(id):
    ++successful
    checksum += id
```

