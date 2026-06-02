# Задача 3. Mutex Vs SpinLock Benchmark

## Цель

Сравнить `std::mutex` и твой `llp::SpinLock` на короткой и более длинной
critical section.

Нужно увидеть, что spinlock не является магическим ускорителем.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/benchmark_mutex_vs_spinlock.cpp
```

## CMake

Добавь benchmark executable:

```cmake
add_executable(benchmark_mutex_vs_spinlock
        benchmarks/benchmark_mutex_vs_spinlock.cpp
)

target_include_directories(benchmark_mutex_vs_spinlock PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(benchmark_mutex_vs_spinlock PRIVATE Threads::Threads)
```

## Scenarios

Сравни:

```text
1. std::mutex, 2 threads, short critical section
2. SpinLock, 2 threads, short critical section
3. std::mutex, 4 threads, short critical section
4. SpinLock, 4 threads, short critical section
5. std::mutex, 2 threads, longer critical section
6. SpinLock, 2 threads, longer critical section
7. std::mutex, 4 threads, longer critical section
8. SpinLock, 4 threads, longer critical section
```

## Requirements

- Short critical section: только `++counter`.
- Longer critical section: внутри lock сделай маленький loop на 100 простых
  операций, потом обнови counter.
- Для каждого scenario печатай:
  - lock type;
  - thread count;
  - critical section type;
  - elapsed;
  - final counter.
- Не используй `std::cout` внутри hot loop.
- Запускай benchmark в Release.

## Interface Hint

Можно написать template helper:

```cpp
template <typename Lock>
void run_case(std::string_view name, int thread_count, bool long_work);
```

Главное, чтобы `Lock` имел методы:

```cpp
lock.lock();
lock.unlock();
```

`std::mutex` и `SpinLock` подходят под такой интерфейс.

## Критерии Готовности

- Benchmark собирается.
- Все final counters корректные.
- Ты можешь объяснить, где spinlock быстрее.
- Ты можешь объяснить, где spinlock хуже mutex.
- Ты можешь объяснить, почему lock в hot path опасен.

## Подсказка 1

Для `std::mutex` можно использовать `std::lock_guard`.

Для `SpinLock` можно тоже использовать `std::lock_guard<llp::SpinLock>`, если
класс имеет `lock()` и `unlock()`.

## Подсказка 2

Longer critical section должна быть внутри lock, иначе ты не сравнишь ожидание
lock.

## Подсказка 3

Если results скачут, это нормально. Запусти benchmark несколько раз.

## Что Прислать На Review

Пришли:

- `benchmarks/benchmark_mutex_vs_spinlock.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- короткий вывод своими словами.

