# Задача 2. Benchmark `vector::push_back` With and Without `reserve()`

## Цель

Написать первый microbenchmark на базе твоих `BenchmarkTimer` и `LatencyStats`.
Нужно сравнить latency одного `std::vector<int>::push_back()` в двух сценариях:

1. vector растет без заранее заданной capacity;
2. vector заранее получает достаточно памяти через `reserve()`.

Главная цель - увидеть не только average/median, но и tail latency: `p95`,
`p99`, `max`.

## Нужные Файлы

Рекомендуемые файлы:

```text
benchmarks/stage_01_measurement_basics/benchmark_vector_push_back.cpp
```

Если понадобится helper для печати stats, можно сделать небольшой local function
прямо в benchmark-файле. Пока не выноси formatter в отдельную библиотеку.

## CMake

Добавь отдельный executable:

```cmake
add_executable(benchmark_vector_push_back
        benchmarks/stage_01_measurement_basics/benchmark_vector_push_back.cpp
)

target_include_directories(benchmark_vector_push_back PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake --build cmake-build-debug --target benchmark_vector_push_back
./cmake-build-debug/benchmark_vector_push_back
```

Для более честного результата запускай Release build:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_vector_push_back
./cmake-build-release/benchmark_vector_push_back
```

## Требования

- Используй `llp::BenchmarkTimer`.
- Используй `llp::LatencyStats`.
- Сделай два benchmark case:
  - `without_reserve`;
  - `with_reserve`.
- Для каждого case выведи:
  - count;
  - min;
  - mean;
  - median;
  - p95;
  - p99;
  - max.
- Printing должен быть после измерения, не внутри measured loop.
- В measured loop должна быть только операция, которую ты измеряешь, насколько
  это возможно.
- Не используй GoogleTest для этого файла. Это benchmark executable, а не unit
  test.

## Важный Design Вопрос

Тут есть ловушка: если benchmark делает один `push_back` на каждой итерации,
то vector должен жить снаружи lambda, иначе ты будешь измерять создание vector,
а не `push_back`.

Идея:

```cpp
std::vector<int> values;

auto stats = timer.run([&] {
    values.push_back(42);
});
```

Для `with_reserve` заранее зарезервируй место под warm-up + measured iterations:

```cpp
values.reserve(config.warmup_iterations + config.measured_iterations);
```

## Конфигурация

Начни с такой config:

```cpp
llp::BenchmarkConfig config{
    .warmup_iterations = 10'000,
    .measured_iterations = 100'000,
};
```

Если benchmark слишком шумный или слишком быстрый, можно увеличить
`measured_iterations`.

## Output Format

Формат можешь выбрать сам, но он должен быть читаемым. Например:

```text
without_reserve
count   : 100000
min     : 20 ns
mean    : 35 ns
median  : 30 ns
p95     : 40 ns
p99     : 80 ns
max     : 12000 ns

with_reserve
count   : 100000
min     : 20 ns
mean    : 28 ns
median  : 27 ns
p95     : 35 ns
p99     : 42 ns
max     : 300 ns
```

Числа выше не являются ожидаемыми результатами. Это только пример формы.

## Критерии Готовности

- Benchmark собирается отдельной CMake target.
- Benchmark запускается из terminal.
- В выводе есть оба case: `without_reserve` и `with_reserve`.
- Для каждого case напечатаны `min`, `mean`, `median`, `p95`, `p99`, `max`.
- Внутри measured lambda нет printing.
- В `with_reserve` нет reallocation во время measured phase.
- Ты можешь своими словами объяснить, почему `max` и `p99` важнее average для
  этого эксперимента.

## Подсказка 1

Сделай функцию:

```cpp
void print_stats(std::string_view name, const llp::LatencyStats& stats);
```

Она может печатать `stats.min().count()`, `stats.percentile(95).count()` и так
далее.

## Подсказка 2

Чтобы optimizer не выкинул работу полностью, после benchmark можно вывести
`values.size()` или вернуть его из helper-функции. Главное - не печатать size
внутри measured loop.

## Подсказка 3

Сначала напиши явно две функции:

```cpp
llp::LatencyStats run_without_reserve(llp::BenchmarkConfig config);
llp::LatencyStats run_with_reserve(llp::BenchmarkConfig config);
```

Не пытайся сразу делать универсальную framework-абстракцию. Один хороший
benchmark сейчас полезнее, чем слишком общий benchmark harness.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_01_measurement_basics/benchmark_vector_push_back.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода benchmark в Debug или Release.

Я посмотрю на методологию измерения, лишние аллокации, влияние setup на measured
phase и на то, как ты интерпретируешь p95/p99/max.
