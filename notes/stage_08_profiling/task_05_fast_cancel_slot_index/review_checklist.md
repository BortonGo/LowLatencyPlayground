# Review Checklist. Fast Cancel Slot Index

## API

- Есть experimental side with cancel index.
- Production `OrderBookSide` не сломан.
- API понятный и близкий к существующим book side.

## Correctness

- Add работает.
- Best order пропускает canceled orders.
- Cancel first order работает.
- Cancel middle order работает.
- Cancel missing order возвращает false.
- Duplicate active id rejected.
- FIFO active orders сохраняется.
- `order_count()` считает active orders.

## Cancel Path

- Cancel не делает linear scan по всему level.
- Location index указывает на конкретный level/slot.
- После cancel index обновляется корректно.
- Tombstone не возвращается как best order.

## Benchmark

- Есть benchmark для FIFO cancel.
- Есть benchmark для reverse cancel.
- Есть benchmark для random cancel.
- Есть сравнение с текущим `OrderBookSide`.
- Есть checksum.

## Profiling

- Есть profile.
- Проверено, уменьшился ли `std::deque::erase`.
- Проверено, уменьшился ли move внутри cancel.
- Остаточные `unordered_map/free` честно описаны.

## Low-Latency Thinking

- В notes объяснен tombstone tradeoff.
- Есть понимание, что cleanup не исчез, а перенесен.
- Следующая цель сформулирована на основе profile.
