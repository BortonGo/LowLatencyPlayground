# Review Checklist. Flat Side Integration Decision

## Inputs

- Использованы notes из task 7.
- Использованы notes из task 8.
- Использованы notes из task 9.
- Использован flat matching benchmark из task 5.
- Если данных не хватает, это явно написано.

## Options

- Рассмотрен current flat side.
- Рассмотрен dense order id index.
- Рассмотрен price level container change.
- Рассмотрен tombstone approach, если данные к нему ведут.
- Рассмотрен вариант ничего не встраивать.

## Decision

- Выбран один следующий шаг.
- Следующий шаг маленький.
- Следующий шаг можно проверить benchmark.
- Риск описан.
- Data support описан.

## Scope

- Production `MatchingEngine` не заменен.
- Старый `OrderBookSide` не удален.
- Allocator не добавлен.
- Несколько redesign не смешаны в одну задачу.
