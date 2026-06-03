# Задача 4. Branch Prediction Benchmark

## Цель

Написать benchmark, который сравнивает predictable и unpredictable branch в
tight loop.

Нужно измерить два случая:

1. predictable flags;
2. random flags.

Главная цель - увидеть, что одинаковый код с одинаковым количеством данных может
работать по-разному из-за branch prediction.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_02_cache_locality/branch_prediction_benchmark.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(branch_prediction_benchmark
        benchmarks/stage_02_cache_locality/branch_prediction_benchmark.cpp
)

target_include_directories(branch_prediction_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target branch_prediction_benchmark
./cmake-build-release/branch_prediction_benchmark
```

## Требования

- Используй `llp::BenchmarkTimer` и `llp::LatencyStats`.
- Создай `std::vector<std::uint64_t> values`.
- Создай два набора flags:
  - `predictable_flags`;
  - `random_flags`.
- Все данные должны быть подготовлены до measured phase.
- В measured loop не должно быть random generation, allocation или printing.
- В обоих cases measured loop должен иметь одинаковую форму:

```cpp
for (std::size_t i = 0; i < values.size(); ++i) {
    if (flags[i]) {
        sum += values[i];
    }
}
```

- После benchmark выведи stats и checksum для обоих cases.
- Запускай в Release build.

## Рекомендуемая Конфигурация

```cpp
constexpr std::size_t value_count = 10'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 10,
    .measured_iterations = 100,
};
```

Если долго, уменьши `value_count` до `1'000'000`.

## Как Создать Flags

Predictable:

```cpp
predictable_flags.push_back(i % 2 == 0);
```

Random:

```cpp
std::mt19937 rng(42);
std::bernoulli_distribution dist(0.5);
random_flags.push_back(dist(rng));
```

Не используй `std::vector<bool>`. Лучше:

```cpp
std::vector<std::uint8_t> flags;
```

## Output Format

Пример:

```text
predictable_branch
count   : ...
median  : ...
p95     : ...
p99     : ...
max     : ...
checksum: ...

random_branch
...
```

## Критерии Готовности

- Оба vectors flags имеют одинаковый size.
- Random flags генерируются до benchmark.
- Checksums выводятся и не равны нулю.
- Measured loop одинаковый для predictable и random cases.
- В measured loop нет allocation/printing/random.
- Benchmark запускается в Release build.
- Ты можешь объяснить, почему random branch может быть медленнее.

## Подсказка 1

Сделай общий helper:

```cpp
llp::LatencyStats benchmark_branch(
    const std::vector<std::uint64_t>& values,
    const std::vector<std::uint8_t>& flags,
    std::uint64_t& checksum);
```

Так ты уменьшишь риск, что predictable и random cases отличаются кодом.

## Подсказка 2

Если разница маленькая, попробуй увеличить `value_count`. Еще можно сделать
дополнительный case `mostly_true`, например 95% true, но сначала сделай только
два основных.

## Подсказка 3

Не пытайся сразу писать branchless version. Это будет отдельное обсуждение:
branchless code иногда быстрее, иногда нет.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_02_cache_locality/branch_prediction_benchmark.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода Release build;
- короткое объяснение результата своими словами.
