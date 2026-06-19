# Branch Distribution

## Inputs

- Source: `benchmarks/stage_09_language_level_optimization/benchmark_branch_distribution.cpp`
- Main function inspected: `run_bench`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`
- Notes: `notes/stage_09_language_level_optimization/topic_02_branch_prediction_and_inlining/task_01_branch_distribution_baseline/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался с разным процентом наполнения валидных ордероа.
Задача измерения: посмотреть, как влияет процент валидных ордеров на branch predictor.

## Outputs

(средне из 3х прогонов)

| Build                |                   Run bench |
| -------------------- | ---------------------------:|
| 99% Valid            |  485µs / 2.05333e+09 ops/s  |
| 90% Valid            |  865µs / 1.15585e+09 ops/s  |
| 50% Valid            |  2539µs / 3.93759e+08 ops/s  |
| Randomized 50% Valid |  2697µs / 3.70736e+08 ops/s  |


## Conclusion

- `99%`: branch predictor показывает наилучший результат.
- `90%`: branch predictor почти в 2 раза медленнее чем на `99%`.
- `50%`: branch predictor примерно в 6 раза медленнее чем на `99%`.
- `Randomized 50% Valid`: результат схож с `50%`, но чуть хуже.
