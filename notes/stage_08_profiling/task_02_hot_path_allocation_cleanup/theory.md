# Теория. Allocations In Hot Path

В low-latency коде важно не только среднее время операции, но и хвосты latency.

Одна из частых причин плохих хвостов:

```text
allocation / rehash / free внутри hot path
```

Проблема не только в том, что `new` или `malloc` могут быть медленными. Проблема в том, что они могут быть непредсказуемыми:

- иногда быстро;
- иногда нужен новый блок памяти;
- иногда происходит rehash;
- иногда allocator трогает больше памяти;
- иногда появляется большой latency spike.

Для matching engine hot path обычно хочется, чтобы обработка заявки была максимально предсказуемой.

## Что Показал Profiling

В первом profiling pass были видны такие функции:

```text
std::__hash_table::__emplace_unique_key_args
std::__hash_table::__do_rehash
std::__hash_table::__erase_unique
operator new
malloc
free
```

Это значит, что текущая реализация `OrderBookSide` всё ещё может делать allocator work во время:

- добавления resting order;
- удаления order из индекса;
- cancel;
- match/pop best.

## Первый Практичный Шаг

Полностью убрать все аллокации сразу сложно.

Первый маленький шаг:

```text
добавить reserve() и заранее подготовить внутренние контейнеры
```

Это не уберёт все `operator new`, потому что `std::unordered_map` обычно хранит элементы в отдельных node.

Но это должно уменьшить или убрать:

```text
__do_rehash
```

А значит сделать latency стабильнее.

## Как Думать

Правильный цикл:

```text
profile -> hypothesis -> small change -> benchmark -> profile again
```

Не надо оптимизировать вслепую. Сначала мы увидели `rehash` и allocator в профиле. Потом делаем маленькое изменение, которое должно ударить именно по этой причине. Потом проверяем, стало ли лучше.

