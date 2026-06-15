# Order Id Index Experiment

## Inputs

- Benchmark: `benchmark_order_id_idx`
- Notes: `notes/stage_08_profiling/task_08_order_id_index_experiment/profiling_notes.md`

## Analysis

Dense vector index стабильно быстрее `std::unordered_map` на bounded dense id workload.

Главный tradeoff: такой index хорош, когда `order_id` лежит в заранее известном плотном диапазоне. Если id sparse или max id очень большой, vector начнет платить памятью.

По текущим данным это весомая причина рассматривать усложнение архитектуры, но пока как отдельный integration step, а не как автоматическую замену production `OrderBookSide`.

## Outputs

- unordered_map insert: `throughput_ops_sec = 7.83765e+07`, `elapsed = 127589µs`
- order_id_idx insert: `throughput_ops_sec = 2.88718e+09`, `elapsed = 3463µs`
- unordered_map find: `throughput_ops_sec = 9.59766e+08`, `elapsed = 10419µs`
- order_id_idx find: `throughput_ops_sec = 5.04043e+09`, `elapsed = 1983µs`
- unordered_map erase: `throughput_ops_sec = 6.70452e+07`, `elapsed = 149153µs`
- order_id_idx erase: `throughput_ops_sec = 4.15793e+09`, `elapsed = 2405µs`
- unordered_map insert/find/erase: `throughput_ops_sec = 1.24551e+08`, `elapsed = 80288µs`
- order_id_idx insert/find/erase: `throughput_ops_sec = 2.04562e+09`, `elapsed = 4888µs`
