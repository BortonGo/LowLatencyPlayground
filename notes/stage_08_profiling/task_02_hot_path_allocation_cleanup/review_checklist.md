# Review Checklist. Hot Path Allocation Cleanup

## API

- `OrderBookSide::reserve(std::size_t)` есть.
- `MatchingEngine::reserve(std::size_t)` есть.
- API понятный и не раскрывает внутренние контейнеры наружу.
- `reserve()` не меняет бизнес-логику matching/cancel.

## Correctness

- Существующие тесты проходят.
- Add/cancel/match работают как раньше.
- Нет изменения semantics ради benchmark-а.
- Нет UB при `reserve(0)`.

## Benchmark

- Benchmark вызывает reserve до заполнения книги.
- Подготовка данных отделена от измеряемой части.
- Сравнение до/после честное.
- Есть checksum или другой guard от оптимизации компилятором.

## Profiling

- Profile снят после изменения.
- Есть сравнение с предыдущим profile.
- Проверено, уменьшился ли `__do_rehash`.
- Не сделан вывод "аллокаций нет", если `operator new/malloc/free` всё ещё видны.

## Low-Latency Thinking

- Оптимизация основана на данных из profile.
- Есть понимание, что `reserve()` уменьшает rehash, но не убирает node allocations.
- Есть следующий optimization target.
- В notes написан честный вывод, даже если эффект небольшой.

