# __builtin_expect

## Inputs

- Source: `benchmarks/stage_09_language_level_optimization/benchmark_branch_distribution.cpp`
- Main function inspected: `run_bench_good_hint`, `run_bench_bad_hint`, `run_bench_good_hint_builtin_expect`, `run_bench_bad_hint_builtin_expect`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`
- Notes: `notes/stage_09_language_level_optimization/topic_02_branch_prediction_and_inlining/task_03_builtin_expect/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался с разным процентом валидных ордеров.
Задача измерения: посмотреть, как влияет `__builtin_expect` с разным процентом валидных ордеров на branch predictor.

Apple Clang 21 поддерживает `__builtin_expect`. GCC и Clang обычно тоже поддерживают его,
но это не standard C++, поэтому для portable production code нужен fallback или отдельный wrapper.

## Outputs

Three local Release runs. Table values are median elapsed time; checksums matched for every variant.

| Distribution | Baseline | `[[likely]]` | `[[unlikely]]` | `expect(..., true)` | `expect(..., false)` |
|---|---:|---:|---:|---:|---:|
| 99% valid | 807us / 1.23877e+09 ops/s | 599us / 1.6684e+09 ops/s | 609us / 1.64058e+09 ops/s | 542us / 1.84346e+09 ops/s | 537us / 1.86176e+09 ops/s |
| 90% valid | 833us / 1.2e+09 ops/s | 783us / 1.27599e+09 ops/s | 969us / 1.03133e+09 ops/s | 779us / 1.28267e+09 ops/s | 1'143us / 8.74285e+08 ops/s |
| 50% valid | 2'634us / 3.79585e+08 ops/s | 2'557us / 3.91026e+08 ops/s | 2'458us / 4.06724e+08 ops/s | 2'749us / 3.63736e+08 ops/s | 2'720us / 3.67534e+08 ops/s |
| Randomized 50% valid | 2'647us / 3.77727e+08 ops/s | 2'457us / 4.06973e+08 ops/s | 2'604us / 3.84025e+08 ops/s | 2'644us / 3.78161e+08 ops/s | 2'685us / 3.72428e+08 ops/s |

## Conclusion

- On 90% valid data, `__builtin_expect(condition, true)` is close to `[[likely]]`; the wrong expectation is clearly slower.
- On 50% data, neither expectation is semantically correct, and both builtin variants are slower than baseline in these runs.
- The 99% `expect(..., false)` result is only 5us from `expect(..., true)`. This is not evidence that a wrong expectation helps; it is within benchmark noise and the variants still run in a fixed order.
- `__builtin_expect` does not show a reliable advantage over `[[likely]]` here.
- Do not add it broadly to the project. Use it only behind a compiler-specific wrapper and only after measuring a stable hot path.
