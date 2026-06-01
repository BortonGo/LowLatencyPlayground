# Теория 2. SPSC Queue

## Что Такое SPSC

SPSC означает Single Producer Single Consumer.

Это очередь, где:

- ровно один thread пишет (`push`);
- ровно один thread читает (`pop`);
- других producers/consumers нет.

Из-за такого ограничения queue можно сделать намного проще и быстрее, чем
generic multi-thread queue.

## Чем SPSC Отличается От RingBuffer

Предыдущий `RingBuffer<T>` был single-thread structure. Он использовал:

```text
head
tail
size
```

Для SPSC `size` обычно не хранят как shared mutable counter, потому что его
одновременно меняли бы producer и consumer. Вместо этого используют два atomic
index:

```text
head: где consumer читает
tail: где producer пишет
```

Producer в основном меняет `tail`.
Consumer в основном меняет `head`.

## Почему Power-of-Two Capacity

Если capacity равна степени двойки, можно заменить modulo на mask:

```cpp
index = counter & (capacity - 1);
```

Вместо:

```cpp
index = counter % capacity;
```

Это дешевле и часто используется в low-latency ring buffers.

Пример:

```text
capacity = 1024
mask     = 1023
index    = sequence & mask
```

## Full/Empty

Один простой вариант:

```text
empty: head == tail
full : tail - head == capacity
```

Для этого `head` и `tail` можно делать monotonic counters, которые растут, а
index в storage вычислять через mask.

## Memory Ordering

Минимальная идея:

- producer записывает value в storage, потом публикует новый `tail` через
  `store(..., memory_order_release)`;
- consumer читает `tail` через `load(memory_order_acquire)`, чтобы увидеть
  записанный value;
- consumer после чтения value публикует новый `head` через
  `store(..., memory_order_release)`;
- producer читает `head` через `load(memory_order_acquire)`, чтобы видеть
  освобожденное место.

Это не единственная возможная схема, но для учебной SPSC queue она хорошая.

## False Sharing

`head` и `tail` активно читаются/пишутся разными threads. Если они лежат в одной
cache line, может появиться false sharing.

В этой задаче padding можно добавить простым способом:

```cpp
struct alignas(64) PaddedAtomicSize {
    std::atomic<std::size_t> value{0};
};
```

И держать `head` и `tail` отдельно.

## Ограничение Задачи

Это еще не production queue:

- без blocking wait;
- без batch API;
- без cache-friendly placement tricks;
- без support для non-trivial lifetime через raw storage;
- без MPMC.

Наша цель - правильно понять базовую SPSC механику.
