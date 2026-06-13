# Review Checklist. Finish Flat Ask Side Benchmark

## API

- `FlatAskBookSide` использует существующий файл.
- `FlatAskBookSide::reserve(std::size_t)` есть.
- API не раскрывает внутренние контейнеры наружу.
- Production `OrderBookSide` не изменен без причины.

## Correctness

- Existing flat tests проходят.
- Out-of-range rejected.
- Lowest price выбирается как best ask.
- FIFO внутри level сохраняется.
- Pop best работает.
- Cancel работает.

## Benchmark

- Используется существующий `benchmark_price_level_storage`.
- Add scenario есть.
- Best lookup scenario есть.
- Pop best scenario есть.
- Cancel scenario есть.
- Map side и flat side получают одинаковый workload.
- Есть checksum.

## Profiling

- Есть profile для benchmark-а.
- Проверено, что происходит со `std::map`.
- Проверено, что происходит с `std::deque`.
- Проверено, что происходит с `unordered_map`.

## Low-Latency Thinking

- Вывод не утверждает, что flat всегда лучше.
- Ограничение fixed price range описано.
- Следующий шаг выбран на основе результата.
