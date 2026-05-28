# Review Checklist. Stage 3 Task 4 No-Allocation Pipeline

## Correctness

- Input dataset создается до benchmark.
- Output count совпадает в обоих cases.
- Checksums совпадают.
- `no_allocation_pipeline` не пишет за пределы buffer.
- Output buffer capacity достаточна для worst-case.

## Measurement

- Benchmark запускается в Release build.
- Printing отсутствует внутри measured loop.
- `allocating_pipeline` действительно может allocate в measured loop.
- `no_allocation_pipeline` не вызывает growing operations в measured loop.
- `LatencyStats::count()` совпадает с measured iterations.

## Interpretation

- Есть объяснение, где allocation появляется в allocating case.
- Есть объяснение, почему preallocated buffer стабильнее.
- Есть понимание trade-off: fixed capacity и overflow policy.
- Результаты сравниваются по median/tail, не только mean.

## Style

- Код простой.
- Названия cases понятные.
- Data generation deterministic.
- Output benchmark читаемый.
