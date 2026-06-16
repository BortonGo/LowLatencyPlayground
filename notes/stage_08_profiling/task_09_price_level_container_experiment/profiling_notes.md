# Price Level Container

## Inputs

- Benchmark: `benchmark_price_level_container`
- Notes: `notes/stage_08_profiling/task_09_price_level_container_experiment/profiling_notes.md`

## Analysis

Vector показывает себя лучше на `push_back`, а также на cancel near middle/back в этом isolated benchmark.

Но обычный `std::vector<Order>` как drop-in replacement для `std::deque<Order>` плохо подходит для FIFO price level, потому что `pop_front` и cancel near front требуют сдвига большого хвоста массива.

Идея с tombstone/head-index остается отдельной гипотезой: не удалять элементы физически, а помечать их неактивными или двигать `head`. Это может убрать дорогой сдвиг, но потребует отдельного integration benchmark.

## Outputs

- deque push_back: `throughput_ops_sec = 1.06797e+08`, `elapsed = 9363µs`
- vector push_back: `throughput_ops_sec = 1.79512e+08`, `elapsed = 5570µs`
- deque front: `throughput_ops_sec = 3.42466e+12`, `elapsed = 0µs`
- vector front: `throughput_ops_sec = 2.43902e+13`, `elapsed = 0µs`
- deque pop_front: `throughput_ops_sec = 3.52423e+08`, `elapsed = 56µs`
- vector pop_front: `throughput_ops_sec = 210685`, `elapsed = 94928µs`
- deque cancel front: `throughput_ops_sec = 2.91792e+08`, `elapsed = 68µs`
- vector cancel front: `throughput_ops_sec = 244057`, `elapsed = 81948µs`
- deque cancel middle: `throughput_ops_sec = 261306`, `elapsed = 76538µs`
- vector cancel middle: `throughput_ops_sec = 321184`, `elapsed = 62269µs`
- deque cancel back: `throughput_ops_sec = 255979`, `elapsed = 78131µs`
- vector cancel back: `throughput_ops_sec = 430632`, `elapsed = 46443µs`

`front` results have `elapsed = 0µs`, so they should not be used as strong evidence. They only show that both containers make front access extremely cheap at this scale.
