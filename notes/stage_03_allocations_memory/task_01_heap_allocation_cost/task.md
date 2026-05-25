# Задача 1. Heap Allocation Cost Benchmark

## Цель

Написать benchmark, который показывает стоимость allocation в hot path.

Нужно сравнить два сценария:

1. `new/delete` объекта на каждой measured iteration;
2. переиспользование заранее созданного объекта или заранее выделенного массива.

Главная цель - увидеть разницу в latency distribution и понять, почему в
low-latency code allocation стараются уносить из hot path.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/benchmark_new_delete_vs_reuse.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(benchmark_new_delete_vs_reuse
        benchmarks/benchmark_new_delete_vs_reuse.cpp
)

target_include_directories(benchmark_new_delete_vs_reuse PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_new_delete_vs_reuse
./cmake-build-release/benchmark_new_delete_vs_reuse
```

## Структура Объекта

Используй небольшой объект, похожий на message/event:

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

Можно добавить метод/helper, который заполняет поля по index.

## Требования

- Используй `llp::BenchmarkTimer` и `llp::LatencyStats`.
- Сделай case `new_delete`:
  - внутри measured lambda создать `Message` через `new`;
  - заполнить поля;
  - добавить часть полей в checksum;
  - удалить через `delete`.
- Сделай case `reuse_object` или `reuse_array`:
  - память должна быть выделена до benchmark;
  - внутри measured lambda только перезаписать существующий object/slot;
  - добавить часть полей в checksum.
- В measured lambda не должно быть printing.
- После benchmark выведи stats и checksum.
- Запускай в Release build.

## Рекомендуемая Конфигурация

```cpp
llp::BenchmarkConfig config{
    .warmup_iterations = 10'000,
    .measured_iterations = 100'000,
};
```

Если результат слишком шумный, увеличь `measured_iterations`.

## Форма Case `new_delete`

Пример формы:

```cpp
std::uint64_t checksum = 0;
std::uint64_t sequence = 0;

auto stats = timer.run([&] {
    auto* message = new Message{};
    fill_message(*message, sequence++);
    checksum += message->price;
    checksum += message->quantity;
    delete message;
});
```

## Форма Case `reuse_object`

Пример формы:

```cpp
Message message{};
std::uint64_t checksum = 0;
std::uint64_t sequence = 0;

auto stats = timer.run([&] {
    fill_message(message, sequence++);
    checksum += message.price;
    checksum += message.quantity;
});
```

## Output Format

Пример:

```text
new_delete
count   : 100000
median  : ...
p95     : ...
p99     : ...
p99.9   : ...
max     : ...
checksum: ...

reuse_object
...
```

## Критерии Готовности

- Оба cases делают одинаковую логическую работу с `Message`.
- `new_delete` действительно делает allocation/deallocation в measured lambda.
- `reuse_object` не делает allocation в measured lambda.
- Checksums выводятся и не равны нулю.
- Benchmark запускается в Release build.
- Ты можешь объяснить, почему `new/delete` хуже для hot path.

## Подсказка 1

Не используй `std::make_unique` в `new_delete` case. Сейчас мы хотим явно увидеть
`new` и `delete`.

## Подсказка 2

Чтобы код cases был похожим, сделай helper:

```cpp
void fill_message(Message& message, std::uint64_t sequence);
```

## Подсказка 3

Если compiler слишком оптимизирует `reuse_object`, checksum должен зависеть от
полей message и печататься после benchmark.

## Что Прислать На Review

Пришли:

- `benchmarks/benchmark_new_delete_vs_reuse.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода Release build;
- короткое объяснение результата.
