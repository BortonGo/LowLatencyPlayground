# Review Checklist. Clean Hot Path Profile

## Benchmark Structure

- Setup вынесен до measured loop.
- Printing вынесен после measured loop.
- Percentile/median не попадают в hot path measurement.
- `TradeBuffer` заранее выделен.
- Orders заранее сгенерированы.
- Есть checksum.

## Scenarios

- Есть add resting scenario.
- Есть match crossing scenario.
- Есть cancel resting scenario.
- Есть best/pop-heavy scenario или явно написано, почему он не нужен.

## Profile

- Profile сохранен в папке задачи.
- В notes указана команда запуска.
- В notes указаны важные symbols.
- Noise symbols отделены от hot path symbols.

## Analysis

- Вывод основан на новом profile.
- `unordered_map` и `deque` рассмотрены отдельно.
- Не сделан вывод только по одному sample.
- Следующий bottleneck назван как hypothesis или confirmed.

## Scope

- Старый production engine не заменен.
- Новый allocator не добавлен.
- Memory pool не добавлен.
- Задача осталась profiling task.
