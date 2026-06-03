# Задача 2. Struct Layout Experiment

## Цель

Исследовать, как порядок полей в `struct` влияет на:

- `sizeof`;
- `alignof`;
- offsets полей;
- cache footprint;
- traversal time по массиву объектов.

Нужно создать две версии одной логической записи:

1. плохой layout с лишним padding;
2. более плотный layout с полями, упорядоченными по alignment.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_02_cache_locality/struct_layout_experiment.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(struct_layout_experiment
        benchmarks/stage_02_cache_locality/struct_layout_experiment.cpp
)

target_include_directories(struct_layout_experiment PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target struct_layout_experiment
./cmake-build-release/struct_layout_experiment
```

## Интерфейс/Структуры

Используй примерно такие структуры:

```cpp
struct BadLayout {
    bool active;
    std::uint64_t timestamp;
    std::uint32_t price;
    bool is_bid;
    std::uint64_t order_id;
    std::uint32_t quantity;
};

struct GoodLayout {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    bool active;
    bool is_bid;
};
```

Можно выбрать другие имена, но смысл должен быть тот же: одинаковые поля,
разный порядок.

## Requirements

- Выведи `sizeof` и `alignof` для обеих структур.
- Выведи offsets всех полей через `offsetof`.
- Создай `std::vector<BadLayout>` и `std::vector<GoodLayout>` одинакового
  размера.
- Заполни оба vector до измерения.
- Измерь traversal, где читаются несколько полей и считается checksum.
- Используй `llp::BenchmarkTimer` и `llp::LatencyStats`.
- Печатай stats после измерения, не внутри measured loop.
- Запускай в Release build.

## Рекомендуемая Конфигурация

```cpp
constexpr std::size_t record_count = 1'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 20,
    .measured_iterations = 200,
};
```

Одна measured iteration должна проходить по всему vector.

## Что Измерять

Пример measured lambda:

```cpp
std::uint64_t checksum = 0;

auto stats = timer.run([&] {
    std::uint64_t sum = 0;
    for (const auto& record : records) {
        if (record.active) {
            sum += record.timestamp;
            sum += record.order_id;
            sum += record.price;
            sum += record.quantity;
        }
    }
    checksum += sum;
});
```

`checksum` обязательно выведи после benchmark, чтобы compiler не удалил
traversal.

## Output Format

Пример:

```text
BadLayout
sizeof : ...
alignof: ...
offset active   : ...
offset timestamp: ...
...

GoodLayout
sizeof : ...
alignof: ...
...

bad_layout_traversal
count   : ...
median  : ...
p95     : ...
p99     : ...
max     : ...
checksum: ...

good_layout_traversal
...
```

## Критерии Готовности

- Видно, какой layout занимает меньше bytes.
- Offsets полей напечатаны.
- Оба vectors имеют одинаковое количество records.
- Traversal не удален optimizer.
- Benchmark запускается в Release build.
- Ты можешь объяснить, почему smaller struct может улучшить traversal.
- Ты можешь объяснить, почему порядок полей не всегда выбирают только по
  `sizeof`.

## Подсказка 1

Для offsets нужен include:

```cpp
#include <cstddef>
```

И печать:

```cpp
std::cout << offsetof(BadLayout, timestamp) << '\n';
```

## Подсказка 2

Чтобы заполнение было одинаковым, используй один цикл и одинаковые значения:

```cpp
for (std::size_t i = 0; i < record_count; ++i) {
    bad.push_back(...);
    good.push_back(...);
}
```

## Подсказка 3

Если разница в traversal небольшая, это тоже результат. Смотри не только
median, но и сколько memory занимает vector:

```text
sizeof(T) * record_count
```

## Что Прислать На Review

Пришли:

- `benchmarks/stage_02_cache_locality/struct_layout_experiment.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода Release build;
- короткое объяснение, где compiler добавил padding и почему.
