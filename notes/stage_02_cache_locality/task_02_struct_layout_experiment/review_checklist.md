# Review Checklist. Stage 2 Task 2 Struct Layout

## Correctness

- `BadLayout` и `GoodLayout` содержат одинаковый набор полей.
- `sizeof`, `alignof` и `offsetof` напечатаны для обеих структур.
- Оба vectors имеют одинаковый `record_count`.
- Заполнение происходит до measured phase.
- `checksum` выводится после benchmark.

## Measurement

- Traversal измеряется как один полный scan vector.
- В measured loop нет printing.
- В measured loop нет intentional allocation.
- Benchmark запускается в Release build.
- `LatencyStats::count()` совпадает с `measured_iterations`.

## Interpretation

- Есть объяснение internal padding и tail padding.
- Есть сравнение memory footprint: `sizeof(T) * record_count`.
- Есть связь между struct size и cache footprint.
- Есть понимание, что field order может зависеть от access pattern, а не только
  от минимального `sizeof`.

## Style

- Include list явный.
- Код простой и не прячет experiment за лишними abstractions.
- Названия layout variants понятные.
- Output читаемый и позволяет сравнить два cases.
