# Задача 3. ObjectPool<T>

## Цель

Сделать простой generic `ObjectPool<T>` на базе идеи из `FixedMessagePool`.

Нужно:

1. вынести pool в header;
2. покрыть его unit tests;
3. написать benchmark `new/delete` vs `ObjectPool<Message>`.

Главная цель - перейти от pool под конкретный `Message` к reusable компоненту,
но не прыгать сразу в сложный custom allocator.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/object_pool.hpp
tests/test_object_pool.cpp
benchmarks/benchmark_object_pool.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
add_executable(llp_tests
        tests/test_latency_stats.cpp
        tests/test_benchmark_timer.cpp
        tests/test_object_pool.cpp
)
```

Добавь benchmark executable:

```cmake
add_executable(benchmark_object_pool
        benchmarks/benchmark_object_pool.cpp
)

target_include_directories(benchmark_object_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

## Interface

Используй namespace `llp`.

```cpp
template <typename T>
class ObjectPool {
public:
    explicit ObjectPool(std::size_t capacity);

    T* acquire();
    void release(T* object);

    std::size_t capacity() const noexcept;
    std::size_t available() const noexcept;
    bool empty() const noexcept;
};
```

## Implementation Requirements

- Используй `std::vector<T>` как storage.
- Используй `std::vector<std::size_t>` как free list.
- Pool capacity задается в constructor.
- В constructor все slots должны быть добавлены в free list.
- `acquire()`:
  - если свободных slots нет, бросает `std::runtime_error`;
  - берет index из free list;
  - возвращает `&storage[index]`.
- `release()`:
  - rejects `nullptr`;
  - проверяет, что pointer принадлежит `storage`;
  - восстанавливает index через pointer arithmetic;
  - возвращает index во free list.
- Для этой задачи можно не ловить double release, но напиши comment/TODO рядом
  с `release()`, что это known limitation.
- Pool не должен делать heap allocation в `acquire()`/`release()`.

## Unit Tests

Покрой минимум:

```cpp
TEST(ObjectPoolTest, StartsWithFullAvailability)
```

- `capacity() == N`
- `available() == N`
- `empty() == false`

```cpp
TEST(ObjectPoolTest, AcquireDecreasesAvailability)
```

- после одного `acquire()` available уменьшается на 1

```cpp
TEST(ObjectPoolTest, ReleaseRestoresAvailability)
```

- `acquire()`, потом `release()`, available снова полный

```cpp
TEST(ObjectPoolTest, ThrowsWhenExhausted)
```

- pool capacity 1;
- acquire один объект;
- второй acquire throws `std::runtime_error`.

```cpp
TEST(ObjectPoolTest, ThrowsOnNullRelease)
```

- `release(nullptr)` throws.

```cpp
TEST(ObjectPoolTest, ThrowsWhenPointerDoesNotBelongToPool)
```

- создать object на stack;
- `pool.release(&object)` throws.

## Benchmark

Создай `benchmark_object_pool.cpp`.

Сравни:

1. `new_delete`;
2. `object_pool`.

Используй тот же `Message`, что в предыдущей задаче:

```cpp
struct Message {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t side;
    std::uint8_t type;
};
```

Рекомендуемая config:

```cpp
constexpr std::size_t pool_capacity = 1024;

llp::BenchmarkConfig config{
    .warmup_iterations = 10'000,
    .measured_iterations = 100'000,
};
```

## Output Format

```text
new_delete
count   : ...
median  : ...
p95     : ...
p99     : ...
p99.9   : ...
max     : ...
checksum: ...

object_pool
...
checksum: ...
available_after: 1024
```

## Критерии Готовности

- `ObjectPool<T>` лежит в `include/llp/object_pool.hpp`.
- Unit tests проходят через `ctest`.
- Benchmark собирается отдельным target.
- Checksums у `new_delete` и `object_pool` совпадают.
- `available_after == pool_capacity`.
- В `ObjectPool<T>::acquire/release` нет intentional allocation.
- Ты можешь объяснить limitation с double release.

## Подсказка 1

Header-only template - это нормально:

```cpp
#pragma once

namespace llp {
template <typename T>
class ObjectPool {
    ...
};
}
```

Template implementation должна быть видна translation unit, который ее
использует.

## Подсказка 2

Pointer ownership check:

```cpp
T* begin = storage_.data();
T* end = begin + storage_.size();

if (object < begin || object >= end) {
    throw std::runtime_error("object does not belong to this pool");
}
```

## Подсказка 3

Не пытайся пока делать `ObjectPool<T>::create(args...)`. Просто получай pointer
на уже default-constructed object и заполняй его helper-ом.

## Что Прислать На Review

Пришли:

- `include/llp/object_pool.hpp`;
- `tests/test_object_pool.cpp`;
- `benchmarks/benchmark_object_pool.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- пример вывода benchmark Release build.
