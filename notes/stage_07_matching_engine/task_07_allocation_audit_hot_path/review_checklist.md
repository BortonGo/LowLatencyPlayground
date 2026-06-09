# Review Checklist. Allocation Audit In Hot Path

## Measurement

- Orders generation не входит в audit.
- Book preparation отделена от измеряемого сценария.
- Allocation counter сбрасывается перед нужным участком.
- Checksum есть.
- Output содержит scenario name и allocation count.

## Correctness

- Global `operator new/delete` не ломает программу.
- Есть matching vector with reserve.
- Есть matching vector without reserve или отдельное объяснение, почему не делал.
- Есть `TradeBuffer` path.
- Есть cancel path.

## Interpretation

- Объяснено, почему add аллоцирует.
- Объяснено, почему prepared match может не аллоцировать.
- Объяснено, почему `TradeBuffer` не владеет памятью.
- Есть связь с latency tails.

