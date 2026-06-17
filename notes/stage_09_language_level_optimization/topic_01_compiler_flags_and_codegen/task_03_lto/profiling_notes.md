# lto

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_03_lto/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: посмотреть, как lto влияет на простые hot loops:
суммирование, branch-heavy count, validation и копирование подходящих id в заранее подготовленный output.

## Outputs

### Процессор Apple M5 clang

| Build                      |                   Sum prices |            Count price above |           Count valid orders |              Copy matching ids |
| -------------------------: | ---------------------------: | ---------------------------: | ---------------------------: | -----------------------------: |
| Release                    | 1'555µs / 6.42949e+08 ops/s  | 1'254µs / 7.97104e+08 ops/s  | 1'253µs / 7.97846e+08 ops/s  |    3'469µs / 2.88229e+08 ops/s |
| Release -flto              | 4'410µs / 2.26757e+08 ops/s  | 3'667µs / 2.72687e+08 ops/s  | 3'649µs / 2.7402e+08 ops/s   |   14'442µs / 6.92393e+07 ops/s |
| Release -O3                | 2'927µs / 3.41618e+08 ops/s  | 2'613µs / 3.82647e+08 ops/s  | 1'371µs / 7.28952e+08 ops/s  |   3'468µs / 2.88281e+08 ops/s  |
| Release -O3 -flto          | 2'536µs / 3.94244e+08 ops/s  | 1'975µs / 5.06148e+08 ops/s  | 1'291µs / 7.74293e+08 ops/s  |   2'200µs / 4.54545e+08 ops/s  |


### Процессор Intel  i7-13620H gcc

|             Build |                  Sum prices |           Count price above |            Count valid orders |            Copy matching ids |
|------------------:|----------------------------:|----------------------------:|------------------------------:|-----------------------------:|
|           Release | 1'511us / 6.61551e+08 ops/s | 1'519us / 6.58198e+08 ops/s |   1'661us / 6.02011e+08 ops/s |  2'110us / 4.73934e+08 ops/s |
|     Release -flto |  3'522us / 2.8393e+08 ops/s |   3'648us / 2.741e+08 ops/s |   3'685us / 2.71304e+08 ops/s |  7'237us / 1.38179e+08 ops/s |
|       Release -O3 | 1'523us / 6.56556e+08 ops/s | 1'361us / 7.34322e+08 ops/s |   1'558us / 6.41725e+08 ops/s |  2'007us / 4.98033e+08 ops/s |
| Release -O3 -flto | 1'429us / 6.99496e+08 ops/s | 1'435us / 6.96524e+08 ops/s | 1'645us / 6.0757e+08 ops/s    | 2'200us / 4.54504e+08 ops/s  |


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

- Best `sum_prices`: `Release` на M5 clang и `Release -O3 -flto` на intel i7 gcc.
- Best `count_price_above`: `Release` на M5 clang и `Release -O3` на intel i7 gcc.
- Best `count_valid_orders`: `Release`на M5 clang и `Release -O3` на intel i7 gcc.
- Best `copy_matching_ids`: `Release -O3 -flto` и `Release -O3` на intel i7 gcc.
- `-flto` is not automatically faster here. In this run it is worse than plain `Release` for the read/count scenarios and worse than `Release -O3 -flto` for the copy scenario.
