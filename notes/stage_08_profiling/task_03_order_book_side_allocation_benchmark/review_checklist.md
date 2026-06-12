# Review Checklist. OrderBookSide Allocation Benchmark

## Benchmark

- Есть `benchmark_order_book_side_allocations.cpp`.
- Benchmark добавлен в `CMakeLists.txt`.
- Есть сценарий add.
- Есть сценарий cancel.
- Есть сценарий pop best.
- Есть repeated scenario.
- Генерация данных не попадает в измеряемый участок.
- Есть checksum или другой guard от оптимизации.

## Correctness

- Benchmark не меняет production semantics.
- `OrderBookSide` работает как раньше.
- Существующие тесты проходят.
- Нет fake optimization ради цифр.

## Measurement

- Есть результаты без `reserve()`.
- Есть результаты с `reserve()`.
- Workload достаточно длинный для `sample`.
- Есть profile после benchmark-а.

## Profiling Notes

- В notes написано, где виден `__do_rehash`.
- В notes написано, где виден `operator new`.
- В notes написано, где виден `free`.
- В notes написано, виден ли `std::deque::erase`.
- Вывод отделяет rehash от node allocation.

## Low-Latency Thinking

- Оптимизация пока не сделана преждевременно.
- Выбран следующий target на основе profile.
- Есть честное объяснение, почему текущий `OrderBookSide` allocation-heavy.
