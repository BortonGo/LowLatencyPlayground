# Задача 2. SPSC Queue

## Цель

Сделать bounded SPSC queue на базе ring buffer.

Нужно реализовать queue для сценария:

- один producer thread вызывает `push`;
- один consumer thread вызывает `pop`;
- capacity фиксирована;
- allocation после construction нет.

Главная цель - понять power-of-two capacity, mask вместо modulo и базовый
`acquire/release` memory ordering.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/spsc_queue.hpp
tests/test_spsc_queue.cpp
benchmarks/benchmark_spsc_queue.cpp
```

## CMake

Добавь test file в `llp_tests`:

```cmake
tests/test_spsc_queue.cpp
```

Добавь benchmark executable:

```cmake
add_executable(benchmark_spsc_queue
        benchmarks/benchmark_spsc_queue.cpp
)

target_include_directories(benchmark_spsc_queue PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(benchmark_spsc_queue PRIVATE Threads::Threads)
```

`Threads::Threads` уже должен быть найден в проекте для false sharing demo.

## Interface

Используй namespace `llp`.

```cpp
template <typename T>
class SPSCQueue {
public:
    explicit SPSCQueue(std::size_t capacity);

    bool push(const T& value);
    bool pop(T& out);

    std::size_t capacity() const noexcept;
    bool empty() const noexcept;
};
```

## Requirements

- Capacity должна быть power of two.
- Если capacity не power of two или равна `0`, constructor должен бросать
  `std::invalid_argument`.
- Используй `std::vector<T>` как storage.
- Используй `std::atomic<std::size_t>` для `head` и `tail`.
- Используй monotonic counters для `head` и `tail`.
- Для index используй:

```cpp
index = counter & mask;
```

- `push` возвращает `false`, если queue full.
- `pop` возвращает `false`, если queue empty.
- Allocation после construction быть не должно.
- Это SPSC only. Не делай поддержку нескольких producers/consumers.

## Memory Ordering

Минимальная схема:

Producer `push`:

```text
tail = tail.load(relaxed)
head = head.load(acquire)
if tail - head == capacity: full
storage[tail & mask] = value
tail.store(tail + 1, release)
```

Consumer `pop`:

```text
head = head.load(relaxed)
tail = tail.load(acquire)
if head == tail: empty
out = storage[head & mask]
head.store(head + 1, release)
```

## Unit Tests

Покрой минимум:

- constructor rejects zero capacity;
- constructor rejects non power-of-two capacity;
- push/pop one element;
- FIFO order;
- full returns false;
- empty pop returns false;
- wrap-around;
- capacity returns requested capacity.

Для wrap-around можно сделать capacity `4`:

```text
push 1,2,3,4
pop 1,2
push 5,6
pop 3,4,5,6
```

## Benchmark

Сделай `benchmark_spsc_queue.cpp`.

Сценарий:

- `message_count = 1'000'000`;
- producer thread пушит messages `0..message_count-1`;
- consumer thread читает messages и считает checksum;
- измеряется total elapsed time всего producer/consumer run.

Для первой версии не используй `BenchmarkTimer`: нам нужно измерить один
concurrent run целиком.

Output:

```text
spsc_queue
messages : 1000000
checksum : ...
elapsed  : ... us
```

Можно запускать несколько runs вручную.

## Критерии Готовности

- `SPSCQueue<T>` лежит в `include/llp/spsc_queue.hpp`.
- Unit tests проходят через `ctest`.
- Benchmark собирается и запускается в Release.
- Checksums в benchmark корректный.
- Queue не делает allocation после construction.
- Ты можешь объяснить, почему capacity должна быть power of two.
- Ты можешь объяснить, зачем `release` в producer и `acquire` в consumer.

## Подсказка 1

Power-of-two check:

```cpp
bool is_power_of_two(std::size_t value) {
    return value != 0 && (value & (value - 1)) == 0;
}
```

## Подсказка 2

`empty()` в concurrent queue является snapshot. Это значит, что результат может
сразу устареть, если другой thread работает параллельно. Для tests в
single-thread сценарии это нормально.

## Подсказка 3

В benchmark producer может крутиться, пока `push` не succeeded:

```cpp
while (!queue.push(value)) {
}
```

Consumer аналогично:

```cpp
while (!queue.pop(value)) {
}
```

Это busy wait. Для учебного low-latency benchmark сейчас нормально.

## Что Прислать На Review

Пришли:

- `include/llp/spsc_queue.hpp`;
- `tests/test_spsc_queue.cpp`;
- `benchmarks/benchmark_spsc_queue.cpp`;
- изменения в `CMakeLists.txt`;
- вывод `ctest`;
- пример вывода Release benchmark.
