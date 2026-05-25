# Review Checklist. Stage 2 Task 4 Branch Prediction

## Correctness

- `values`, `predictable_flags`, `random_flags` имеют одинаковый size.
- Flags подготовлены до measured phase.
- Checksums выводятся после benchmark.
- `std::vector<bool>` не используется.
- Random generator не вызывается в measured loop.

## Measurement

- Predictable и random cases используют одинаковую loop форму.
- В measured loop нет allocation или printing.
- Benchmark запускается в Release build.
- `LatencyStats::count()` совпадает с `measured_iterations`.
- Данные достаточно большие, чтобы timer overhead не доминировал.

## Interpretation

- Есть объяснение branch predictor.
- Есть объяснение branch misprediction.
- Есть понимание, что branchless code не всегда автоматически лучше.
- Результат интерпретируется через median/tail, не только mean.

## Style

- Общий helper для benchmark снижает duplication.
- Include list явный.
- Output читаемый.
- Названия cases понятные: `predictable_branch`, `random_branch`.
