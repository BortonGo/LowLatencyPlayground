# Review Checklist. Stage 6 Task 1 Binary Message Parser

## Correctness

- Проверяется минимальный размер buffer.
- Все поля читаются с правильных offsets.
- Type validation работает.
- Side validation работает.
- Failed parse не портит `out`.
- Checksums в benchmark не нулевые.

## Performance

- Нет allocation внутри `parse`.
- Нет exceptions в hot path.
- Нет `std::string` в message.
- Нет `reinterpret_cast` всей структуры.
- Benchmark input готовится до измерения.

## API

- Parser возвращает `bool`.
- Output пишется через `MarketDataMessage& out`.
- `message_size` задан явно.
- Namespace `llp`.

## Understanding

- Есть понимание endianess.
- Есть понимание alignment risk.
- Есть понимание parser hot path.

