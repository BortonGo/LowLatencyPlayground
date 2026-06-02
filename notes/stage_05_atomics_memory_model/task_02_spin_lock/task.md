# Задача 2. SpinLock

## Цель

Реализовать минимальный `SpinLock` на `std::atomic_flag`.

Нужно понять:

- как работает `test_and_set`;
- зачем нужны acquire/release;
- почему обычный `int` внутри lock становится безопасным.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/spin_lock.hpp
tests/test_spin_lock.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_spin_lock.cpp
```

Если tests используют `std::thread`, убедись, что `llp_tests` link-ится с:

```cmake
Threads::Threads
```

## Interface

Используй namespace `llp`.

```cpp
class SpinLock {
public:
    void lock() noexcept;
    void unlock() noexcept;

    SpinLock() = default;
    SpinLock(const SpinLock&) = delete;
    SpinLock& operator=(const SpinLock&) = delete;

private:
    std::atomic_flag flag_ = ATOMIC_FLAG_INIT;
};
```

## Requirements

- `lock()` крутится, пока lock занят.
- `unlock()` освобождает lock.
- `lock()` использует `std::memory_order_acquire`.
- `unlock()` использует `std::memory_order_release`.
- Copy constructor и assignment удалены.

## Unit Tests

Покрой минимум:

- можно создать `SpinLock`;
- один thread может сделать `lock` и `unlock`;
- несколько threads инкрементят общий `int counter` под lock;
- после `join` counter равен `threads * iterations`.

## Критерии Готовности

- Tests проходят.
- Нет data race на `counter`.
- Ты можешь объяснить, почему `counter` может быть обычным `int`.
- Ты можешь объяснить, почему spinlock нельзя держать долго.

## Подсказка 1

Базовый lock loop:

```cpp
while (flag_.test_and_set(std::memory_order_acquire)) {
}
```

## Подсказка 2

Unlock:

```cpp
flag_.clear(std::memory_order_release);
```

## Подсказка 3

В тесте critical section должна быть маленькой:

```cpp
lock.lock();
++counter;
lock.unlock();
```

## Что Прислать На Review

Пришли:

- `include/llp/spin_lock.hpp`;
- `tests/test_spin_lock.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`.

