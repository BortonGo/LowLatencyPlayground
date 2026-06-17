# LTO

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_03_lto/profiling_notes.md`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: посмотреть, как lto влияет на простые hot loops:
суммирование, branch-heavy count, validation и копирование подходящих id в заранее подготовленный output.

Важно: текущие результаты для `Release -flto` нельзя считать финальным сравнением.
Команда

```bash
cmake -S . -B cmake-build-release-lto -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-flto -DNDEBUG"
```

заменяет дефолтные release flags CMake. На этой машине обычный `Release` собирается как `-O3 -DNDEBUG`,
а вариант выше собрался без `-O2/-O3`. Поэтому он сравнивает не только LTO, но и потерю optimization level.

## Outputs

### Current Fixed Measurements

Local machine: Apple clang 21.0.0, arm64.  
Value: median of 3 runs by elapsed time.

| Build | Sum prices | Count price above | Count valid orders | Copy matching ids |
|---|---:|---:|---:|---:|
| Release | 898us / 1.11359e+09 ops/s | 462us / 2.16022e+09 ops/s | 487us / 2.0504e+09 ops/s | 1'485us / 6.73382e+08 ops/s |
| Release -O3 | 789us / 1.26656e+09 ops/s | 412us / 2.42302e+09 ops/s | 533us / 1.87281e+09 ops/s | 1'773us / 5.63751e+08 ops/s |
| Release -O3 -flto | 1'178us / 8.48386e+08 ops/s | 811us / 1.23235e+09 ops/s | 851us / 1.1748e+09 ops/s | 1'407us / 7.10585e+08 ops/s |

### External Measurements

Intel i7-13620H gcc results from a separate machine:

| Build | Sum prices | Count price above | Count valid orders | Copy matching ids |
|---|---:|---:|---:|---:|
|           Release | 1'511us / 6.61551e+08 ops/s | 1'519us / 6.58198e+08 ops/s |   1'661us / 6.02011e+08 ops/s |  2'110us / 4.73934e+08 ops/s |
|     Release -flto |  3'522us / 2.8393e+08 ops/s |   3'648us / 2.741e+08 ops/s |   3'685us / 2.71304e+08 ops/s |  7'237us / 1.38179e+08 ops/s |
|       Release -O3 | 1'523us / 6.56556e+08 ops/s | 1'361us / 7.34322e+08 ops/s |   1'558us / 6.41725e+08 ops/s |  2'007us / 4.98033e+08 ops/s |
| Release -O3 -flto | 1'429us / 6.99496e+08 ops/s | 1'435us / 6.96524e+08 ops/s | 1'645us / 6.0757e+08 ops/s    | 2'200us / 4.54504e+08 ops/s  |


## Binary Size

Local Apple clang build artifacts:

| Build | Binary size |
|---|---:|
| Release | 40K |
| Release -O3 | 40K |
| Release -O3 -march=native | 40K |
| Release -O3 -flto | 40K |

## Commands

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_optimization_levels
./cmake-build-release/benchmark_optimization_levels

cmake -S . -B cmake-build-o3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG"
cmake --build cmake-build-o3 --target benchmark_optimization_levels
./cmake-build-o3/benchmark_optimization_levels

cmake -S . -B cmake-build-release-lto-fixed -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -flto -DNDEBUG"
cmake --build cmake-build-release-lto-fixed --target benchmark_optimization_levels
./cmake-build-release-lto-fixed/benchmark_optimization_levels
```

## Notes

- `Release -flto` from this run is not a valid baseline because it dropped `-O3`.
- `Release -O3 -flto` is the meaningful LTO row in the current table.
- On Apple clang, `Release -O3 -flto` improves `copy_matching_ids`, but does not beat plain `Release` or plain `Release -O3` on read/count scenarios.
- On Intel gcc, `Release -O3 -flto` improves `sum_prices`, but does not beat `Release -O3` on the other scenarios.
- LTO should stay an optional release experiment for now, not a global default.
