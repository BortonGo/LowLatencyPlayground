# Теория 1. Cost of Heap Allocation

## Почему Heap Allocation Дорогая

`new` и `delete` выглядят как обычные операции, но внутри они могут делать много
работы:

- искать подходящий memory block;
- обновлять allocator metadata;
- брать locks или использовать thread-local caches;
- трогать новые pages;
- вызывать constructor/destructor;
- иногда обращаться к OS.

Одна allocation может быть быстрой, но latency distribution часто имеет хвост:
большинство вызовов нормальные, а некоторые внезапно сильно медленнее.

## Почему Это Важно В Hot Path

В low-latency коде hot path обычно должен быть максимально предсказуемым.
Heap allocation плохо подходит для этого:

- время allocation не полностью контролируется кодом;
- allocator state меняется со временем;
- возможны cache misses;
- возможна contention между threads;
- возможны latency spikes.

Поэтому часто стараются:

- выделять память заранее;
- переиспользовать объекты;
- использовать pools;
- разделять setup phase и processing phase.

## Что Мы Сравним

В этой задаче нужно сравнить:

1. `new/delete` на каждой iteration;
2. reuse заранее созданного объекта или массива объектов.

Это еще не полноценный memory pool. Цель проще: увидеть, что allocation в hot
path может быть заметно дороже и менее стабильной, чем работа с уже выделенной
памятью.

## Важный Benchmark Trap

Если ты создаешь объект, но результат не используется, compiler может удалить
часть работы. Поэтому нужен checksum или observable result.

Также нельзя печатать внутри measured loop: иначе ты измеришь terminal output,
а не allocation.
