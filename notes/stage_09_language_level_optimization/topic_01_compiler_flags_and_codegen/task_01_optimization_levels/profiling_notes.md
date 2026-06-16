# Optimization Levels

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_01_optimization_levels/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: посмотреть, как уровень оптимизации влияет на простые hot loops:
суммирование, branch-heavy count, validation и копирование подходящих id в заранее подготовленный output.

## Outputs

| Build          |                   Sum prices |            Count price above |           Count valid orders |              Copy matching ids |
| -------------- | ---------------------------: | ---------------------------: | ---------------------------: | -----------------------------: |
| Debug          | 4'330µs / 2.30905e+08 ops/s | 3'884µs / 2.57447e+08 ops/s | 4'146µs / 2.41191e+08 ops/s |    15'785µs / 6.33504e+07 ops/s |
| RelWithDebInfo | 2'639µs / 3.78878e+08 ops/s | 2'359µs / 4.23811e+08 ops/s | 2'046µs / 4.88639e+08 ops/s |    2'122µs / 4.71143e+08 ops/s |
| Release        | 1'832µs / 5.45852e+08 ops/s | 1'383µs / 7.22783e+08 ops/s | 1'394µs / 7.17018e+08 ops/s |   3'081µs / 3.24517e+08 ops/s |
| Release -O2    | 3'144µs / 3.18003e+08 ops/s | 2'401µs / 4.16493e+08 ops/s | 1'402µs / 7.13225e+08 ops/s |   2'049µs / 4.87924e+08 ops/s |
| Release -O3    | 3'245µs / 3.08155e+08 ops/s | 2'268µs / 4.40771e+08 ops/s | 2'008µs / 4.97915e+08 ops/s |   2'824µs / 3.53988e+08 ops/s |

## Commands

```bash
cmake -S . -B cmake-build-debug -DCMAKE_BUILD_TYPE=Debug
cmake --build cmake-build-debug --target benchmark_optimization_levels
./cmake-build-debug/benchmark_optimization_levels

cmake -S . -B cmake-build-relwithdebinfo -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build cmake-build-relwithdebinfo --target benchmark_optimization_levels
./cmake-build-relwithdebinfo/benchmark_optimization_levels

cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_optimization_levels
./cmake-build-release/benchmark_optimization_levels

cmake -S . -B cmake-build-o2 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O2 -DNDEBUG"
cmake --build cmake-build-o2 --target benchmark_optimization_levels
./cmake-build-o2/benchmark_optimization_levels

cmake -S . -B cmake-build-o3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG"
cmake --build cmake-build-o3 --target benchmark_optimization_levels
./cmake-build-o3/benchmark_optimization_levels
```

## Notes

- Best `sum_prices`: `Release`.
- Best `count_price_above`: `Release`.
- Best `count_valid_orders`: `Release`, almost equal to `Release -O2`.
- Best `copy_matching_ids`: `Release -O2`, with `RelWithDebInfo` close behind.
- `-O3` is not automatically faster here. In this run it is worse than plain `Release` for the read/count scenarios and worse than `Release -O2` for the copy scenario.
