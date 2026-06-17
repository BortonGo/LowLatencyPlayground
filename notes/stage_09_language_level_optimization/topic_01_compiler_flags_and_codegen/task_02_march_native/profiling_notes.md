# march=native

## Inputs

- Benchmark: `benchmark_optimization_levels`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_02_march_native/profiling_notes.md`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`

## Analysis

Один и тот же benchmark запускался в разных build-конфигурациях.
Задача измерения: проверить, дает ли `-march=native` выигрыш на текущей машине.

Важно: текущие результаты для `Release -march=native` нельзя считать финальным сравнением.
Команда

```bash
cmake -S . -B cmake-build-release-march-native -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-march=native -DNDEBUG"
```

заменяет дефолтные release flags CMake. На этой машине обычный `Release` собирается как `-O3 -DNDEBUG`,
а вариант выше собрался без `-O2/-O3`. Поэтому он сравнивает не только `march`, но и потерю optimization level.

## Outputs

### Current Fixed Measurements

Local machine: Apple clang 21.0.0, arm64.  
Value: median of 3 runs by elapsed time.

| Build | Sum prices | Count price above | Count valid orders | Copy matching ids |
|---|---:|---:|---:|---:|
| Release | 898us / 1.11359e+09 ops/s | 462us / 2.16022e+09 ops/s | 487us / 2.0504e+09 ops/s | 1'485us / 6.73382e+08 ops/s |
| Release -O3 | 789us / 1.26656e+09 ops/s | 412us / 2.42302e+09 ops/s | 533us / 1.87281e+09 ops/s | 1'773us / 5.63751e+08 ops/s |
| Release -O3 -march=native | 721us / 1.3856e+09 ops/s | 501us / 1.99567e+09 ops/s | 551us / 1.81488e+09 ops/s | 1'441us / 6.93722e+08 ops/s |

### External Measurements

Intel i7-13620H gcc results from a separate machine:

| Build | Sum prices | Count price above | Count valid orders | Copy matching ids |
|---|---:|---:|---:|---:|
| Release                    | 1'511us / 6.61551e+08 ops/s  | 1'519us / 6.58198e+08 ops/s  | 1'661us / 6.02011e+08 ops/s  | 2'110us / 4.73934e+08 ops/s |
| Release -O3                | 1'523us / 6.56556e+08 ops/s  | 1'361us / 7.34322e+08 ops/s  | 1'558us / 6.41725e+08 ops/s  | 2'007us / 4.98033e+08 ops/s |
| Release -march=native      | 3'646us / 2.74243e+08 ops/s  | 4'296us /  2.32731e+08 ops/s  | 4'141us / 2.4147e+08 ops/s  | 6'796us / 1.47137e+08 ops/s |
| Release -O3 -march=native  | 1'761us / 5.67859e+08 ops/s  | 1'586us / 6.30318e+08 ops/s  | 2'036us / 4.91014e+08 ops/s  | 3'703us / 2.70044e+08 ops/s |

## Commands

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_optimization_levels
./cmake-build-release/benchmark_optimization_levels

cmake -S . -B cmake-build-o3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG"
cmake --build cmake-build-o3 --target benchmark_optimization_levels
./cmake-build-o3/benchmark_optimization_levels

cmake -S . -B cmake-build-release-march-native-fixed -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -march=native -DNDEBUG"
cmake --build cmake-build-release-march-native-fixed --target benchmark_optimization_levels
./cmake-build-release-march-native-fixed/benchmark_optimization_levels
```

## Notes

- `Release -march=native` from this run is not a valid baseline because it dropped `-O3`.
- `Release -O3 -march=native` is the meaningful `march` row in the current local table.
- On Apple clang, `-O3 -march=native` improved `sum_prices` and `copy_matching_ids`, but was worse on the two branch/count workloads.
- On Intel gcc, current data also does not show a win from `-O3 -march=native` over plain `Release`/`Release -O3`.
- Binary built with `-march=native` should not be treated as portable: it may use instructions available only on the build machine CPU.
