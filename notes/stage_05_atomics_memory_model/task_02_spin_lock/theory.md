# Теория 2. SpinLock

## Что Такое SpinLock

SpinLock - это lock, который не усыпляет поток.

Если lock занят, thread просто крутится в loop:

```cpp
while (locked) {
}
```

Это может быть быстро, если ожидание очень короткое. Но если lock держат долго,
spinlock начинает тратить CPU впустую.

## Atomic Flag

`std::atomic_flag` - простой atomic boolean-like primitive.

Для lock используют:

```cpp
flag.test_and_set(...)
```

Он атомарно выставляет flag в `true` и возвращает старое значение.

Для unlock используют:

```cpp
flag.clear(...)
```

## Acquire/Release

При входе в lock:

```cpp
test_and_set(memory_order_acquire)
```

Acquire гарантирует, что после успешного lock thread увидит данные, записанные
предыдущим владельцем lock.

При выходе:

```cpp
clear(memory_order_release)
```

Release публикует изменения, сделанные внутри critical section.

## Когда SpinLock Опасен

SpinLock плох, если:

- critical section длинная;
- lock часто contended;
- threads больше, чем CPU cores;
- thread с lock может быть descheduled OS.

## HFT-Мышление

SpinLock иногда используют для очень коротких critical sections, где sleep/wakeup
mutex слишком дорогой.

Но "spinlock быстрее mutex" - неверная универсальная фраза. Нужно измерять.

