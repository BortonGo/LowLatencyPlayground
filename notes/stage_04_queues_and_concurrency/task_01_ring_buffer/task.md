# Задача 1. Fixed-Capacity Ring Buffer

## Цель

Сделать простой single-thread fixed-capacity ring buffer и сравнить его с `std::queue`.

Главная цель - понять базовую механику circular buffer: `head`, `tail`, `size`, wrap-around и поведение при full/empty.

Это еще не lock-free очередь и не SPSC. Потоки и atomics будут позже.

## Нужные Файлы

Рекомендуемые файлы:

```text
include/llp/ring_buffer.hpp
tests/test_ring_buffer.cpp
benchmarks/benchmark_ring_buffer.cpp
```

## CMake

Добавь header в основной target, тест в `llp_tests`, и отдельный benchmark executable:

```cmake
add_executable(benchmark_ring_buffer
        benchmarks/benchmark_ring_buffer.cpp
)

target_include_directories(benchmark_ring_buffer PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

## Структура Ring Buffer

Сделай template class:

```cpp
namespace llp {
    template <typename T>
    class RingBuffer {
    public:
        explicit RingBuffer(std::size_t capacity);

        bool push(const T& value);
        bool pop(T& out);

        std::size_t capacity() const noexcept;
        std::size_t size() const noexcept;
        bool empty() const noexcept;
        bool full() const noexcept;
        void clear() noexcept;

    private:
        // storage
        // head
        // tail
        // size
    };
}
```

Для этой задачи достаточно хранить `std::vector<T> storage` фиксированного размера. В constructor задаешь размер,
после этого capacity не меняется.

## Как Должен Работать push

`push(value)`:

- если buffer full, возвращает `false`;
- записывает value в `tail`;
- двигает `tail` на следующий slot с wrap-around;
- увеличивает `size`;
- возвращает `true`.

Wrap-around можно делать через modulo или явный if. Выбери тот вариант, который тебе понятнее.

## Как Должен Работать pop

`pop(out)`:

- если buffer empty, возвращает `false`;
- копирует элемент из `head` в `out`;
- двигает `head` на следующий slot с wrap-around;
- уменьшает `size`;
- возвращает `true`.

Порядок должен быть FIFO: что раньше положили, то раньше достали.

## Тесты

Сначала напиши тесты, потом benchmark.

Минимальный набор:

- новый buffer пустой;
- `push` увеличивает size;
- `pop` возвращает то, что положили;
- несколько элементов выходят в FIFO order;
- `pop` из empty возвращает `false`;
- `push` в full возвращает `false`;
- wrap-around работает;
- `clear` возвращает buffer в empty state.

Для wrap-around сделай маленькую capacity, например `3`:

```text
push 1
push 2
pop -> 1
push 3
push 4
pop -> 2
pop -> 3
pop -> 4
```

Так ты проверишь, что `tail` реально обошел конец storage и вернулся в начало.

## Benchmark

Сравни два cases:

1. `std_queue`
2. `ring_buffer`

Оба cases должны делать одинаковую работу:

- взять заранее подготовленный набор `Message`;
- положить messages в очередь/buffer;
- достать их обратно;
- посчитать checksum по полям.

## Message

Используй небольшую структуру:

```cpp
struct Message {
    std::uint64_t sequence;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t type;
};
```

Input dataset создай до benchmark. В measured lambda не должно быть random generation или printing.

## Рекомендуемая Конфигурация

```cpp
constexpr std::size_t message_count = 1024;
constexpr std::size_t buffer_capacity = 1024;

llp::BenchmarkConfig config{
    .warmup_iterations = 1'000,
    .measured_iterations = 10'000,
};
```

Если долго, уменьши `measured_iterations`.

## Форма Benchmark Прогона

Для каждого measured iteration:

```text
for each input message:
    push message

while queue/buffer not empty:
    pop message
    checksum += fields
```

Важно: ring buffer capacity должен быть достаточным для `message_count`, иначе `push` начнет возвращать `false`.
Если `push` вернул `false` в benchmark, это ошибка конфигурации.

## Output Format

Пример:

```text
=== STD_QUEUE ===
Count: ...
Min: ...
Max: ...
Mean: ...
Median: ...
p95: ...
p99: ...
p99.9: ...
checksum: ...

=== RING_BUFFER ===
...
checksum: ...
```

## Важные Ограничения

- Не используй threads в этой задаче.
- Не используй atomics.
- Не делай dynamic growth внутри `RingBuffer`.
- Не печатай внутри measured loop.
- Не выделяй input dataset внутри measured loop.
- Сначала добейся прохождения тестов.

## Критерии Готовности

- `RingBuffer<T>` лежит в `include/llp/ring_buffer.hpp`.
- Есть тесты на empty/full/FIFO/wrap-around.
- Benchmark сравнивает `std::queue` и `RingBuffer`.
- Checksums выводятся и совпадают.
- Ring buffer не делает allocation после construction.
- Benchmark запускается в Release build.
- Ты можешь объяснить, как работают `head`, `tail`, `size`.

## Что Прислать На Review

Пришли:

- `include/llp/ring_buffer.hpp`;
- `tests/test_ring_buffer.cpp`;
- `benchmarks/benchmark_ring_buffer.cpp`;
- изменения в `CMakeLists.txt`;
- пример output из Release build;
- короткое объяснение результата своими словами.

