# Review Checklist. Stage 3 Task 1 Heap Allocation Cost

## Correctness

- `new_delete` создает и удаляет объект внутри measured lambda.
- `reuse_object` или `reuse_array` не выделяет память внутри measured lambda.
- Оба cases заполняют одинаковые поля `Message`.
- Checksums выводятся после benchmark.
- Нет memory leak.

## Measurement

- Printing не находится внутри measured loop.
- Benchmark запускается в Release build.
- `LatencyStats::count()` совпадает с `measured_iterations`.
- Setup phase отделена от measured phase.
- Результат не удален optimizer.

## Interpretation

- Есть сравнение median, p95, p99, p99.9 и max.
- Есть объяснение allocator overhead.
- Есть объяснение, почему allocation в hot path может давать tail spikes.
- Есть понимание, что reuse object - это еще не полноценный memory pool.

## Style

- Include list явный.
- `fill_message` или аналогичный helper убирает duplication.
- Названия cases понятные.
- Output читаемый.
