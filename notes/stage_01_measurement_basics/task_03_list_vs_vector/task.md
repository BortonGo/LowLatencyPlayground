# Задача 3. Benchmark `std::vector` vs `std::list` Traversal

## Цель

Написать benchmark, который сравнивает traversal по `std::vector<int>` и
`std::list<int>`.

Главная цель - увидеть, как contiguous memory влияет на latency по сравнению с
pointer chasing.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/benchmark_list_vs_vector.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(benchmark_list_vs_vector
        benchmarks/benchmark_list_vs_vector.cpp
)

target_include_directories(benchmark_list_vs_vector PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake --build cmake-build-release --target benchmark_list_vs_vector
./cmake-build-release/benchmark_list_vs_vector
```

## Требования

- Используй `llp::BenchmarkTimer`.
- Используй `llp::LatencyStats`.
- Создай два контейнера одинакового размера:
  - `std::vector<int>`;
  - `std::list<int>`.
- Заполни контейнеры до начала измерения.
- В measured lambda проходи по контейнеру и считай сумму.
- Не печатай внутри measured lambda.
- После benchmark выведи:
  - count;
  - min;
  - mean;
  - median;
  - p95;
  - p99;
  - p99.9;
  - max.
- Сделай так, чтобы compiler не мог полностью выкинуть traversal.

## Рекомендуемая Конфигурация

Начни с:

```cpp
constexpr std::size_t container_size = 100'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 100,
    .measured_iterations = 1'000,
};
```

Почему measured iterations меньше, чем в `push_back` benchmark: одна iteration
теперь проходит по всему container, а не делает один `push_back`.

## Важная Методологическая Деталь

В этой задаче measured operation - это полный traversal container.

Пример формы:

```cpp
std::uint64_t checksum = 0;

auto stats = timer.run([&] {
    std::uint64_t sum = 0;
    for (int value : values) {
        sum += static_cast<std::uint64_t>(value);
    }
    checksum += sum;
});
```

`checksum` нужен, чтобы compiler не решил, что traversal не влияет на результат.

## Output Format

Пример:

```text
vector_traversal
count   : 1000
min     : ...
mean    : ...
median  : ...
p95     : ...
p99     : ...
p99.9   : ...
max     : ...
checksum: ...

list_traversal
...
```

Числа не фиксированы. Важно сравнить форму распределения.

## Критерии Готовности

- Benchmark собирается отдельной CMake target.
- Контейнеры заполняются до измерения.
- В measured lambda нет allocation и printing.
- Traversal не удален optimizer из-за неиспользуемого результата.
- Benchmark запускается в Release build.
- Ты можешь объяснить, почему `list` может проигрывать на traversal несмотря на
  `O(n)` у обоих контейнеров.

## Подсказка 1

Для заполнения:

```cpp
std::vector<int> values;
values.reserve(container_size);

std::list<int> values;

for (std::size_t i = 0; i < container_size; ++i) {
    values.push_back(static_cast<int>(i));
}
```

## Подсказка 2

Сделай две функции:

```cpp
llp::LatencyStats benchmark_vector_traversal(...);
llp::LatencyStats benchmark_list_traversal(...);
```

Если нужно вернуть `checksum`, можешь сделать маленький struct:

```cpp
struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t checksum = 0;
};
```

## Подсказка 3

Не сравнивай `push_back` для `vector` и `list` в этой задаче. Мы сейчас
сравниваем именно traversal и memory locality.

## Что Прислать На Review

Пришли:

- `benchmarks/benchmark_list_vs_vector.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода из Release build;
- короткое объяснение своими словами, почему результаты такие.
