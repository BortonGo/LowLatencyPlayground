# lto

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_03_lto/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: посмотреть, как lto влияет на простые hot loops:
суммирование, branch-heavy count, validation и копирование подходящих id в заранее подготовленный output.

## Outputs

### Процессор Apple M5 (10 ядер)

| Build                      |                   Sum prices |            Count price above |           Count valid orders |              Copy matching ids |
| -------------------------: | ---------------------------: | ---------------------------: | ---------------------------: | -----------------------------: |
| Release                    | 1'555µs / 6.42949e+08 ops/s  | 1'254µs / 7.97104e+08 ops/s  | 1'253µs / 7.97846e+08 ops/s  |    3'469µs / 2.88229e+08 ops/s |
| Release -flto              | 4'410µs / 2.26757e+08 ops/s  | 3'667µs / 2.72687e+08 ops/s  | 3'649µs / 2.7402e+08 ops/s   |   14'442µs / 6.92393e+07 ops/s |
| Release -O3                | 2'927µs / 3.41618e+08 ops/s  | 2'613µs / 3.82647e+08 ops/s  | 1'371µs / 7.28952e+08 ops/s  |   3'468µs / 2.88281e+08 ops/s  |
| Release -O3 -flto          | 2'536µs / 3.94244e+08 ops/s  | 1'975µs / 5.06148e+08 ops/s  | 1'291µs / 7.74293e+08 ops/s  |   2'200µs / 4.54545e+08 ops/s  |


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

cmake -S . -B cmake-build-release-lto -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-flto -DNDEBUG"
cmake --build cmake-build-release-lto --target benchmark_optimization_levels
./cmake-build-release-lto/benchmark_optimization_levels

cmake -S . -B cmake-build-o3-lto -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -flto -DNDEBUG"
cmake --build cmake-build-o3-lto --target benchmark_optimization_levels
./cmake-build-o3-lto/benchmark_optimization_levels
```

## Notes

- Best `sum_prices`: `Release`.
- Best `count_price_above`: `Release`.
- Best `count_valid_orders`: `Release`, almost equal to `Release -O2`.
- Best `copy_matching_ids`: `Release -O2`, with `RelWithDebInfo` close behind.
- `-O3` is not automatically faster here. In this run it is worse than plain `Release` for the read/count scenarios and worse than `Release -O2` for the copy scenario.
