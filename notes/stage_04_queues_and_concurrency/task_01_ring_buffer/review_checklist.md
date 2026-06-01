# Review Checklist. Stage 4 Task 1 Ring Buffer

## Correctness

- Новый buffer пустой.
- `capacity()` возвращает заданную capacity.
- `push` возвращает `false`, когда buffer full.
- `pop` возвращает `false`, когда buffer empty.
- FIFO order сохраняется.
- Wrap-around покрыт тестом.
- `size`, `empty`, `full` согласованы друг с другом.
- `clear` корректно сбрасывает состояние.

## Measurement

- Benchmark запускается в Release build.
- Input dataset создается до measured phase.
- Printing отсутствует внутри measured loop.
- Ring buffer создается до measured phase или очищается без allocation.
- `std_queue` и `ring_buffer` делают одинаковую логическую работу.
- Checksums совпадают.

## Interpretation

- Есть сравнение median, p95, p99 и max.
- Есть объяснение, где `std::queue` может делать allocation.
- Есть понимание, что ring buffer ограничен capacity.
- Есть понимание, что это single-thread структура, не SPSC.

## Style

- Header лежит в namespace `llp`.
- Include list минимальный и явный.
- Тесты читаемые и маленькие.
- Benchmark output похож на предыдущие задания.

