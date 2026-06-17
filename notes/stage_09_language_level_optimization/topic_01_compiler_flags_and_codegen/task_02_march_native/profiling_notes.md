# march=native

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_02_march_native/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: посмотреть, как уровень оптимизации влияет на простые hot loops:
суммирование, branch-heavy count, validation и копирование подходящих id в заранее подготовленный output.

## Outputs

### Процессор Apple M5 (10 ядер)

| Build                      |                   Sum prices |            Count price above |           Count valid orders |              Copy matching ids |
| -------------------------: | ---------------------------: | ---------------------------: | ---------------------------: | -----------------------------: |
| Release                    | 2'123µs / 4.70912e+08 ops/s  | 1'786µs / 5.59793e+08 ops/s  | 1'401µs / 7.13458e+08 ops/s  |    2'854µs / 3.50345e+08 ops/s |
| Release -O3                | 2'425µs / 4.12208e+08 ops/s  | 2'136µs / 4.67955e+08 ops/s  | 2'069µs / 4.83287e+08 ops/s  |    3'450µs / 2.89785e+08 ops/s |
| Release -march=native      | 4'387µs / 2.27912e+08 ops/s  | 4'247µs /  2.3546e+08 ops/s  | 3'988µs / 2.50708e+08 ops/s  |   15'743µs / 6.35186e+07 ops/s |
| Release -O3 -march=native  | 4'273µs / 2.34007e+08 ops/s  | 3'913µs / 2.55504e+08 ops/s  | 4'166µs / 2.40038e+08 ops/s  |   15'434µs / 6.47899e+07 ops/s |


### Процессор Intel i7 ()

| Build                      |                   Sum prices |            Count price above |           Count valid orders |              Copy matching ids |
| -------------------------: | ---------------------------: | ---------------------------: | ---------------------------: | -----------------------------: |
| Release                    | 2'123µs / 4.70912e+08 ops/s  | 1'786µs / 5.59793e+08 ops/s  | 1'401µs / 7.13458e+08 ops/s  |    2'854µs / 3.50345e+08 ops/s |
| Release -O3                | 2'425µs / 4.12208e+08 ops/s  | 2'136µs / 4.67955e+08 ops/s  | 2'069µs / 4.83287e+08 ops/s  |    3'450µs / 2.89785e+08 ops/s |
| Release -march=native      | 4'387µs / 2.27912e+08 ops/s  | 4'247µs /  2.3546e+08 ops/s  | 3'988µs / 2.50708e+08 ops/s  |   15'743µs / 6.35186e+07 ops/s |
| Release -O3 -march=native  | 4'273µs / 2.34007e+08 ops/s  | 3'913µs / 2.55504e+08 ops/s  | 4'166µs / 2.40038e+08 ops/s  |   15'434µs / 6.47899e+07 ops/s |


## Commands

```bash

cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_optimization_levels
./cmake-build-release/benchmark_optimization_levels

cmake -S . -B cmake-build-o3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG"
cmake --build cmake-build-o3 --target benchmark_optimization_levels
./cmake-build-o3/benchmark_optimization_levels

cmake -S . -B cmake-build-release-march-native -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-march=native -DNDEBUG"
cmake --build cmake-build-release-march-native --target benchmark_optimization_levels
./cmake-build-release-march-native/benchmark_optimization_levels

cmake -S . -B cmake-build-o3-march-native -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -march=native -DNDEBUG"
cmake --build cmake-build-o3-march-native --target benchmark_optimization_levels
./cmake-build-o3-march-native/benchmark_optimization_levels
```

## Notes

- Best `sum_prices`: `Release`.
- Best `count_price_above`: `Release`.
- Best `count_valid_orders`: `Release`, almost equal to `Release -O2`.
- Best `copy_matching_ids`: `Release -O2`, with `RelWithDebInfo` close behind.
- `-O3` is not automatically faster here. In this run it is worse than plain `Release` for the read/count scenarios and worse than `Release -O2` for the copy scenario.
