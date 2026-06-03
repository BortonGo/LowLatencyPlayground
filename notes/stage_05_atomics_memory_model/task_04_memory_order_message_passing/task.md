# Задача 4. Memory Order Message Passing

## Цель

Сделать маленький benchmark/demo, который показывает паттерн публикации данных
через atomic flag.

Нужно руками потрогать:

- `release`;
- `acquire`;
- `relaxed`;
- `seq_cst`;
- почему обычные данные можно читать после acquire.

## Нужные Файлы

Рекомендуемые файлы:

```text
benchmarks/benchmark_memory_order_message_passing.cpp
```

## CMake

Добавь benchmark executable:

```cmake
add_executable(benchmark_memory_order_message_passing
        benchmarks/benchmark_memory_order_message_passing.cpp
)

target_link_libraries(benchmark_memory_order_message_passing PRIVATE Threads::Threads)
```

## Scenario

Сделай структуру:

```cpp
struct Payload {
    std::uint64_t sequence;
    std::uint64_t price;
    std::uint64_t quantity;
};
```

И shared state:

```cpp
Payload payload{};
std::atomic<bool> ready{false};
```

Producer:

```text
записывает payload
публикует ready = true
ждет, пока consumer сбросит ready = false
```

Consumer:

```text
ждет ready == true
читает payload
считает checksum
сбрасывает ready = false
```

## Scenarios

Сравни 3 варианта:

```text
1. release/acquire
2. seq_cst
3. relaxed
```

Важно: relaxed вариант нужен как эксперимент. В выводе подпиши, что relaxed
message passing не является корректной публикацией обычных данных.

## Requirements

- `message_count = 1'000'000`.
- Producer и consumer в разных threads.
- Для каждого scenario печатай:
  - name;
  - elapsed;
  - throughput msg/sec;
  - checksum.
- Не используй `std::cout` внутри hot loop.
- Запускай в Release.

## Критерии Готовности

- Benchmark собирается и запускается.
- `release/acquire` scenario дает корректный checksum.
- `seq_cst` scenario дает корректный checksum.
- Ты можешь объяснить, почему relaxed scenario концептуально небезопасен.
- Ты можешь объяснить, чем этот паттерн похож на `SPSCQueue`.

## Подсказка 1

Для producer wait:

```cpp
while (ready.load(load_order)) {
}
```

Для consumer wait:

```cpp
while (!ready.load(load_order)) {
}
```

## Подсказка 2

Для release/acquire:

```cpp
ready.store(true, std::memory_order_release);
ready.load(std::memory_order_acquire);
```

Сброс `ready = false` тоже должен синхронизировать следующий producer cycle.

## Подсказка 3

Если хочешь избежать `bool` ping-pong путаницы, можно использовать atomic
sequence number. Но для первой версии `bool ready` проще.

## Что Прислать На Review

Пришли:

- `benchmarks/benchmark_memory_order_message_passing.cpp`;
- изменения в `CMakeLists.txt`;
- вывод Release benchmark;
- объяснение, почему `relaxed` тут не является корректной публикацией.

