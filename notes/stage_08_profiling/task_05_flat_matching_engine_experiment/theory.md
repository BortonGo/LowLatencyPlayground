# Теория. Flat Matching Engine

После generic flat buy/sell side можно проверить главный вопрос:

```text
помогает ли flat price storage в реальном matching workload?
```

Отдельный side benchmark полезен, но matching engine добавляет:

- crossing logic;
- partial fills;
- trade creation;
- pop best;
- cancel through both sides.

## Почему Не Заменять Production Сразу

Flat storage имеет ограничения:

- fixed price range;
- out-of-range orders rejected;
- память зависит от диапазона цен;
- sparse range может быть невыгодным.

Поэтому сначала нужен экспериментальный `FlatMatchingEngine`.

## Что Мы Проверяем

Сравнение с текущим `MatchingEngine` должно ответить:

- быстрее ли add resting orders;
- быстрее ли match crossing orders;
- быстрее или медленнее cancel;
- что осталось в profile после удаления `std::map`;
- не переехал ли bottleneck в `unordered_map` или `deque`.

## Возможные Результаты

Flat может быть быстрее на add/match, потому что:

- меньше pointer chasing;
- прямой доступ к price level;
- нет tree nodes для price levels.

Flat может не помочь cancel, потому что:

- id index всё ещё `unordered_map`;
- cancel всё ещё ищет order внутри level;
- `deque::erase` всё ещё может двигать элементы.

Это нормальный результат.

Тогда следующий target будет cancel index, а не очередная догадка.
