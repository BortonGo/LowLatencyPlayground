# Review Checklist. Stage 3 Task 3 ObjectPool<T>

## Correctness

- `ObjectPool<T>` generic и не завязан на `Message`.
- Capacity задается явно.
- `available()` корректно меняется после acquire/release.
- Exhausted pool throws.
- `release(nullptr)` throws.
- Pointer outside pool throws.
- Double release limitation явно осознана.

## Tests

- Есть unit tests для basic acquire/release.
- Есть test на exhausted pool.
- Есть test на invalid release.
- Tests подключены в `llp_tests`.
- `ctest` проходит.

## Measurement

- Benchmark запускается в Release build.
- `new_delete` и `object_pool` делают одинаковую логическую работу.
- Checksums совпадают.
- `available_after == pool_capacity`.
- В measured loop нет printing.

## Performance Thinking

- Есть сравнение median, p95, p99, p99.9 и max.
- Есть объяснение, почему pool стабильнее heap allocation.
- Есть понимание fixed capacity trade-off.
- Нет попытки преждевременно делать thread-safe pool.

## Style

- Header include list минимальный.
- Namespace `llp`.
- Naming consistent.
- Output benchmark читаемый.
