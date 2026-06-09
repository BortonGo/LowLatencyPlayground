# Review Checklist. Price Level Storage Experiment

## Correctness

- Out-of-range price rejected.
- FIFO на одном price сохраняется.
- Best ask выбирает минимальную цену.
- `pop_best` удаляет первый order лучшего level.
- Empty level корректно пропускается.

## Benchmark

- Map и flat получают одинаковые orders.
- Generation не входит в timed section.
- Есть checksum.
- Есть elapsed и throughput.
- Сценарии названы понятно.

## Performance Thinking

- Объяснен pointer-heavy cost `std::map`.
- Объяснен cache-friendly flat storage.
- Указаны ограничения fixed price range.
- Нет вывода "flat всегда лучше" без условий.

