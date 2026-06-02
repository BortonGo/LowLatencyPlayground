# Теория 3. Mutex Vs SpinLock

## Почему Нужно Сравнивать

SpinLock не всегда быстрее `std::mutex`.

Если lock занят, spinlock крутится и тратит CPU. Mutex может усыпить поток и дать
CPU кому-то другому.

## Короткая Critical Section

Если critical section очень короткая:

```cpp
++counter;
```

spinlock может быть быстрее, потому что не платит за sleep/wakeup.

## Длинная Critical Section

Если внутри lock есть заметная работа, остальные threads просто крутятся.

В таком случае mutex часто лучше, потому что waiting thread не жжет CPU.

## Contention

Contention - это ситуация, когда несколько threads хотят один lock одновременно.

Чем выше contention, тем хуже масштабируются shared locks.

## HFT-Мышление

Правильный вопрос не "mutex или spinlock".

Правильный вопрос:

```text
можно ли убрать shared lock из hot path?
```

Если нельзя, нужно измерять:

- сколько threads compete;
- сколько длится critical section;
- какой p99 latency;
- есть ли CPU oversubscription.

