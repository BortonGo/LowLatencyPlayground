# inline_noinline

## Inputs

- Source: `benchmarks/stage_09_language_level_optimization/benchmark_inline_noinline.cpp`
- Main function inspected: `run_bench_inside_loop`, `run_bench_normal_helper`, `run_bench_always_inline`, `run_bench_noinline`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`
- Notes: `notes/stage_09_language_level_optimization/topic_02_branch_prediction_and_inlining/task_04_inline_noinline/profiling_notes.md`

## Analysis

Один и тот же benchmark запускался с разным процентом валидных ордеров.
Задача измерения: посмотреть, как влияет `inline_noinline` с разным процентом валидных ордеров на branch predictor и как ассемблер ведет себя.

## Outputs

Three local Release runs. Table values are median elapsed time; checksums matched for every variant.

| Distribution | 90% | 50% |
|---|---:|---:|
| `inside loop` | 539µs / 1.85457e+09 ops/s | 2669µs / 3.74549e+08 ops/s |
| `normal helper` | 494µs / 2.02344e+09 ops/s | 486µs / 2.05444e+09 ops/s |
| `[[gnu::always_inline]` | 475µs / 2.10416e+09 ops/s | 472µs / 2.11491e+09 ops/s |
| `[[gnu::noinline]` | 481µs / 2.07846e+09 ops/s | 484µs / 2.06345e+09 ops/s |

## Conclusion

-  `inline` показывает результаты лучше, чем call helper
- Ассемблер интересно отличается на O0 и O2. O2 сам инлайнит хелпер в run_bench_normal_helper