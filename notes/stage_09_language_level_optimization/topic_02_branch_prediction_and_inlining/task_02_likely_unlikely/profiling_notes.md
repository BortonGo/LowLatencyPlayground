# Likely unlikely

## Inputs

- Source: `benchmarks/stage_09_language_level_optimization/benchmark_branch_distribution.cpp`
- Main function inspected: `run_bench_good_hint`, `run_bench_bad_hint`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`
- Notes: `notes/stage_09_language_level_optimization/topic_02_branch_prediction_and_inlining/task_02_likely_unlikely/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался с разным процентом наполнения валидных ордероа.
Задача измерения: посмотреть, как влияют аттрибуты `[[likely]]` и `[[unlikely]]` с разным процентом валидных ордеров на branch predictor.

## Outputs

(средне из 3х прогонов)

| Build                              |                    Run bench |
| ---------------------------------- | ----------------------------:|
| 99% Valid  BASELINE                |  498µs / 2.00518e+09 ops/s   |
| 99% Valid GOOD HINT                |  494µs / 2.02207e+09 ops/s   |
| 99% Valid BAD HINT                 |  586µs / 1.70503e+09 ops/s   |
|                                    |                              |
| 90% Valid  BASELINE                |  869µs / 1.14992e+09 ops/s   |
| 90% Valid GOOD HINT                |  861µs / 1.16105e+09 ops/s   |
| 90% Valid BAD HINT                 |  1048µs / 9.53782e+08 ops/s  |
|                                    |                              |
| 50% Valid  BASELINE                |  2768µs / 3.61152e+08 ops/s  |
| 50% Valid GOOD HINT                |  2506µs / 3.98969e+08 ops/s  |
| 50% Valid BAD HINT                 |  2620µs / 3.81619e+08 ops/s  |
|                                    |                              |
| RANDOMIZED 50% VALID  BASELINE     |  2653µs / 3.7689e+08 ops/s   |
| RANDOMIZED 50% VALID 50% GOOD HINT |  2541µs / 3.93494e+08 ops/s  |
| RANDOMIZED 50% VALID 50% BAD HINT  |  2676µs / 3.73593e+08 ops/s  |

## Conclusion

Hints почти не помогают, когда baseline branch predictor и так хорошо справляется.
Неверный hint может заметно навредить.
Hints стоит использовать только при стабильном и измеренном перекосе данных,
а не как общую оптимизацию validation code.