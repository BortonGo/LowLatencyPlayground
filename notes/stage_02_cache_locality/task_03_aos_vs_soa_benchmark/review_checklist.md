# Review Checklist. Stage 2 Task 3 AoS vs SoA

## Correctness

- AoS и SoA содержат одинаковые logical records.
- `record_count` одинаковый для обоих datasets.
- Checksums совпадают.
- SoA vectors имеют одинаковый size.
- `std::vector<bool>` не используется.

## Measurement

- Dataset создается до measured phase.
- Measured loop читает только нужные поля.
- В measured loop нет printing/allocation.
- Benchmark запускается в Release build.
- `LatencyStats::count()` совпадает с `measured_iterations`.

## Interpretation

- Есть comparison AoS memory vs SoA hot memory.
- Есть объяснение, какие поля hot и какие cold.
- Есть понимание, когда AoS может быть лучше SoA.
- Вывод не сводится к "SoA всегда лучше".

## Style

- Include list явный.
- Названия `RecordAoS` и `RecordsSoA` понятны.
- Код не перегружен abstraction.
- Output читаемый и позволяет сравнить cases.
