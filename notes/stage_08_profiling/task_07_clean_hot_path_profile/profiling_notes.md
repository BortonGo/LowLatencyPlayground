# FlatMatchingEngine Hot Path

## Inputs

- Benchmark: `benchmark_flat_matching_engine_hot_path current-add`
- Benchmark: `benchmark_flat_matching_engine_hot_path flat-add`
- Benchmark: `benchmark_flat_matching_engine_hot_path current-match`
- Benchmark: `benchmark_flat_matching_engine_hot_path flat-match`
- Benchmark: `benchmark_flat_matching_engine_hot_path current-cancel`
- Benchmark: `benchmark_flat_matching_engine_hot_path flat-cancel`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_current_add.txt`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_current_match.txt`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_current_cancel.txt`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_flat_add.txt`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_flat_match.txt`
- Profile: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_flat_matching_engine_hot_path_flat_cancel.txt`
- Notes: `notes/stage_08_profiling/task_07_clean_hot_path_profile/profiling_notes.md`

## Profile Symbols

Symbols still visible in profiles:

- `std::__hash_table::__emplace_unique`
- `std::__hash_table::__erase_unique`
- `operator new`
- `malloc`
- `free`
- `_xzm_free`
- `std::deque::__add_back_capacity`

Symbols reduced or made less important by previous work:

- `std::__hash_table::__do_rehash` after `reserve()`;
- repeated best-level scan after caching `best_level_index_`;
- `std::map` price-level traversal in the flat price-level experiment.

Noise or benchmark harness symbols also appear:

- `_dyld_start`
- `std::chrono::steady_clock::now`
- destructor/free work after measured benchmark sections

These symbols mean that the current profiles are useful, but not perfectly isolated hot-path profiles.

## Analysis

The flat price-level design is a useful direction because it removes `std::map` from bounded-range order books and gives stable O(1) best-level access after caching.

However, the remaining profile does not prove that `deque` is the only next bottleneck. `deque` appears in allocation paths, but `unordered_map::erase`, `unordered_map::emplace`, `operator new`, `malloc`, and `free` are also clearly visible.

Because of that, replacing `deque` with `vector` should be treated as a hypothesis, not as the final redesign decision.

## Outputs

- Current add: `throughput_ops_sec = 3.28175e+07`, `elapsed = 914145µs`
- Flat add: `throughput_ops_sec = 5.76748e+07`, `elapsed = 520157µs`
- Current match: `throughput_ops_sec = 8.971e+06`, `elapsed = 3344109µs`
- Flat match: `throughput_ops_sec = 8.94773e+06`, `elapsed = 3352804µs`
- Current cancel: `throughput_ops_sec = 1.72659e+07`, `elapsed = 1737529µs`
- Flat cancel: `throughput_ops_sec = 2.25076e+07`, `elapsed = 1332882µs`
