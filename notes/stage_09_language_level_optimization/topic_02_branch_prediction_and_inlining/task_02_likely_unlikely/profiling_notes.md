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

| Build               |                   Run bench |
| --------------      | ---------------------------:|
| 99% Valid           |  485µs / 2.05333e+09 ops/s  |
| 99% Valid GOOD HINT |  476µs / 2.09754e+09 ops/s  |
| 99% Valid BAD HINT  |  492µs / 2.03028e+09 ops/s  |
| 90% Valid           |  485µs / 2.05666e+09 ops/s  |
| 90% Valid GOOD HINT |  655µs / 1.52507e+09 ops/s  |
| 90% Valid BAD HINT  |  712µs / 1.40367e+09 ops/s  |
| 50% Valid           |  476µs / 2.09666e+09 ops/s  |
| 50% Valid GOOD HINT |  848µs / 1.17867e+09 ops/s  |
| 50% Valid BAD HINT  |  441µs / 2.26287e+09 ops/s  |


## Conclusion

- `90%`: good hint дает небольшое преимущество.
- `99%`: good hint не дает преимущество.
- `50%`: т.к. good hin не отличается от bad hint, то branch predictor ведет себя странно (bad hint дает лучше результат).