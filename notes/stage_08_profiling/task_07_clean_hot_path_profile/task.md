# Задача 7. Clean Hot Path Profile

## Цель

Сделать более чистый benchmark/profile для `MatchingEngine` и `FlatMatchingEngine`.

Сейчас profile частично загрязнен:

- startup;
- setup/fill book;
- destructor/free после benchmark;
- `LatencyStats::median`;
- `LatencyStats::percentile`;
- частыми вызовами `std::chrono::steady_clock::now`.

Цель:

```text
separate setup -> measure hot path -> print after measurement -> profile only useful region
```

## Что Нужно Сделать

Добавь benchmark:

```text
benchmarks/stage_08_profiling/benchmark_matching_engine_hot_path.cpp
```

И CMake target:

```cmake
add_llp_benchmark(benchmark_matching_engine_hot_path
        benchmarks/stage_08_profiling/benchmark_matching_engine_hot_path.cpp)
```

Сравни:

- `MatchingEngine`;
- `FlatMatchingEngine`.

## Scenarios

Сделай отдельные функции:

- add resting asks;
- match crossing buys;
- cancel resting asks;
- pop/match best-heavy path.

В каждом сценарии:

- setup должен быть до измерения;
- measured loop должен быть максимально коротким;
- printing должен быть после измерения;
- checksum должен защищать от оптимизации;
- `TradeBuffer` должен быть preallocated.

## Profiling

Собери:

```text
cmake --build cmake-build-profile --target benchmark_matching_engine_hot_path
```

Сними profile:

```text
./cmake-build-profile/benchmark_matching_engine_hot_path &
sample $! 10 -file clean_hot_path_profile.txt
```

Сохрани profile рядом с задачей:

```text
notes/stage_08_profiling/task_07_clean_hot_path_profile/clean_hot_path_profile.txt
```

## Report

Создай:

```text
notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_notes.md
```

В отчете напиши:

- setup;
- benchmark numbers;
- какие symbols остались;
- какие symbols были noise;
- что теперь выглядит следующим bottleneck.

## Критерии Готовности

- Есть новый benchmark.
- Benchmark отделяет setup от measured hot path.
- `TradeBuffer` preallocated.
- Есть checksum.
- Есть profile file.
- Есть profiling notes.
- Вывод не делает redesign без данных.

## Что Не Нужно Делать

Пока не надо:

- менять `OrderBookSide`;
- менять `PriceLevelArrayBookSide`;
- писать custom allocator;
- писать новый order store;
- удалять старые benchmark.
