# Задача 4. No-Allocation Message Processing Pipeline

## Цель

Сделать маленький message processing pipeline, где setup может выделять память,
но processing hot path не делает allocation.

Нужно сравнить:

1. `allocating_pipeline`: внутри обработки складывает output через growing
   `std::vector::push_back` без заранее достаточной capacity;
2. `no_allocation_pipeline`: использует заранее выделенный output buffer.

Главная цель - увидеть, как design с preallocated buffers делает hot path более
предсказуемым.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_03_allocations_memory/benchmark_no_allocation_pipeline.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(benchmark_no_allocation_pipeline
        benchmarks/stage_03_allocations_memory/benchmark_no_allocation_pipeline.cpp
)

target_include_directories(benchmark_no_allocation_pipeline PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

## Структуры

Используй простые структуры:

```cpp
struct InputMessage {
    std::uint64_t sequence;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t type;
};

struct OutputEvent {
    std::uint64_t sequence;
    std::uint64_t notional;
};
```

`notional = price * quantity`.

## Pipeline Semantics

Обрабатываем только messages с `type == 1`.

Для каждого такого message пишем `OutputEvent`.

Pseudo:

```text
for each input:
    if input.type == 1:
        output sequence
        output price * quantity
```

## Требования

- Создай input dataset до benchmark.
- Используй `llp::BenchmarkTimer` и `llp::LatencyStats`.
- `allocating_pipeline`:
  - внутри measured lambda создает empty `std::vector<OutputEvent>`;
  - не делает `reserve` под полный worst-case;
  - пишет events через `push_back`.
- `no_allocation_pipeline`:
  - output buffer создан до benchmark;
  - внутри measured lambda только пишет в уже существующий buffer по index;
  - не вызывает `push_back` в measured loop.
- В обоих cases считаем checksum по output events.
- Printing только после benchmark.
- Запускать в Release build.

## Рекомендуемая Конфигурация

```cpp
constexpr std::size_t input_count = 100'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 1'000,
    .measured_iterations = 10'000,
};
```

Если слишком долго, уменьши `measured_iterations`.

## Input Generation

Сделай deterministic data:

```cpp
for (std::size_t i = 0; i < input_count; ++i) {
    InputMessage msg;
    msg.sequence = i;
    msg.price = static_cast<std::uint32_t>(100 + (i % 100));
    msg.quantity = static_cast<std::uint32_t>(1 + (i % 50));
    msg.type = (i % 4 == 0) ? 1 : 0;
}
```

Так output будет примерно 25% от input.

## No-Allocation Buffer

Самый простой вариант:

```cpp
std::vector<OutputEvent> output_buffer(input_count);
std::size_t output_size = 0;
```

В measured lambda:

```cpp
output_size = 0;

for (...) {
    if (...) {
        output_buffer[output_size++] = event;
    }
}
```

Capacity уже есть, `push_back` не нужен.

## Output Format

```text
allocating_pipeline
count       : ...
median      : ...
p95         : ...
p99         : ...
p99.9       : ...
max         : ...
checksum    : ...
last outputs: ...

no_allocation_pipeline
...
```

## Критерии Готовности

- Checksums совпадают.
- Количество output events совпадает.
- `no_allocation_pipeline` не вызывает `push_back` внутри measured lambda.
- `allocating_pipeline` показывает худший tail или хотя бы понятную разницу.
- Benchmark запускается в Release build.
- Ты можешь объяснить, где именно allocation появляется в allocating case.

## Подсказка 1

Сделай общий helper для checksum:

```cpp
checksum += event.sequence;
checksum += event.notional;
```

## Подсказка 2

Если allocating case слишком оптимизируется или разница маленькая, увеличь
`input_count` или сделай `type == 1` чаще.

## Подсказка 3

Не используй `std::string`, `std::optional`, `std::function` или virtual calls.
Эта задача про memory behavior, не про архитектуру pipeline.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_03_allocations_memory/benchmark_no_allocation_pipeline.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода Release build;
- короткое объяснение результата.
