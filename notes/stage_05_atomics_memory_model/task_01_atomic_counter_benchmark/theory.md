# Теория 1. Atomic Counter Benchmark

## Atomic Не Значит Бесплатно

`std::atomic` гарантирует, что операция над переменной не будет data race.

Но atomic operation обычно дороже обычной операции:

- CPU должен выполнить специальную atomic-инструкцию;
- cache line с counter может стать точкой contention;
- при `seq_cst` добавляются более строгие ordering-гарантии.

## Relaxed

`memory_order_relaxed` гарантирует атомарность, но не задает порядок относительно
других memory operations.

Это подходит для счетчиков, где важно только финальное значение:

```cpp
counter.fetch_add(1, std::memory_order_relaxed);
```

Relaxed не значит "обычная переменная". Это все еще atomic.

## Seq Cst

`memory_order_seq_cst` - самый строгий порядок.

Он проще для рассуждения, но может быть дороже. Все seq_cst операции выглядят
так, будто есть один глобальный порядок для всех threads.

## Shared Counter Contention

Когда несколько threads инкрементят один atomic counter, они дерутся за одну
cache line.

Даже если memory order relaxed, cache line должна переходить между cores. Это
часто намного дороже, чем сама арифметика.

## HFT-Мышление

Один общий atomic counter в hot path может стать bottleneck.

Иногда лучше:

- использовать per-thread counters;
- batch updates;
- писать события в queue;
- уменьшить shared mutable state.

