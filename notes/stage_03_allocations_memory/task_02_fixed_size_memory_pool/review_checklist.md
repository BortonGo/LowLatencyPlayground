# Review Checklist. Stage 3 Task 2 Fixed-Size Memory Pool

## Correctness

- Pool capacity задается явно.
- Pool создается до measured phase.
- `fixed_pool` берет объект из пула и возвращает его обратно.
- `new_delete` делает allocation/deallocation для той же логической работы.
- Оба cases заполняют одинаковые поля `Message`.
- Checksums выводятся после benchmark.
- Нет очевидного use-after-free или double release.
- Поведение при exhausted pool явно обработано.

## Measurement

- Benchmark запускается в Release build.
- Printing отсутствует внутри measured loop.
- Allocation отсутствует внутри measured loop для `fixed_pool`.
- Setup phase отделена от measured phase.
- `LatencyStats::count()` совпадает с количеством measured iterations.
- Если используется batch, batch size явно указан в output или комментарии к результату.

## Interpretation

- Есть сравнение mean, median, p95, p99, p99.9 и max.
- Есть объяснение, почему fixed pool может быть стабильнее `new/delete`.
- Есть понимание, что fixed pool платит ограниченной capacity.
- Есть понимание, что single-thread pool проще и не решает contention между потоками.

## Style

- Названия cases понятные.
- Include list аккуратный.
- Логика заполнения `Message` не дублируется без необходимости.
- Pool code достаточно маленький для учебного benchmark.
- Output читаемый.

