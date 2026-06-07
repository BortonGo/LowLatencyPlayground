# Review Checklist. Trade Buffer No Allocation

## API

- `TradeBuffer` не владеет памятью.
- Конструктор явно получает pointer + capacity.
- `push` возвращает `false` при overflow.
- `clear` не очищает память, а только сбрасывает size.
- Нет лишних исключений в hot path.

## Matching Engine

- Есть overload `add(Order, TradeBuffer&)`.
- Vector overload не сломан.
- При overflow engine возвращает `false`.
- Нет heap allocation внутри `TradeBuffer` path.

## Tests

- Есть tests для самого buffer.
- Есть matching test с успешной записью trade.
- Есть matching test на overflow.
- Старые matching tests проходят.

## Performance Thinking

- Понятно, кто владеет памятью.
- Понятно, что делать при заполненном buffer.
- Понятно отличие fixed buffer от `std::vector::push_back`.

