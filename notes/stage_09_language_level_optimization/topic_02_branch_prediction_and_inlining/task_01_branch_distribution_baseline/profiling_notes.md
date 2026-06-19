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

| Build          |                   Run bench |
| -------------- | ---------------------------:|
| 99% Valid      |  485µs / 2.05333e+09 ops/s  |
| 90% Valid      |  485µs / 2.05666e+09 ops/s  |
| 50% Valid      |  476µs / 2.09666e+09 ops/s  |
| Random         |  620µs / 1.72999e+09 ops/s  |


## Conclusion

- `90%` и `99%`: branch predictor ведет себя примерно одинаково.
- `50%`: branch predictor показал наилучший результат.
- `Random`: очевидно наихудший результат, однако иногда random давал неплохое распределение и результат превосходил `90%`.
