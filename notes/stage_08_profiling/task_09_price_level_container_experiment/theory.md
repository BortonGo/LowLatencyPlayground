# Теория. Container Inside Price Level

Price level хранит очередь ордеров одной цены.

Нужные операции:

- push back для нового resting order;
- front для best order;
- pop front для полного match;
- erase arbitrary order для cancel;
- FIFO внутри одного price level.

## deque

`std::deque` хорошо подходит для:

- push back;
- pop front;
- stable-ish behavior без большого memmove.

Но `deque` может аллоцировать блоки и дает менее локальный memory layout.

## vector

`std::vector` хорошо подходит для:

- плотного хранения;
- cache locality;
- fast iteration;
- predictable reserve.

Но `pop_front` и erase из середины требуют сдвига элементов.

## Tombstones

Tombstone подход:

```text
cancel marks order inactive
pop_best skips inactive front orders
```

Плюсы:

- cancel может стать O(1);
- нет erase/memmove в cancel path.

Минусы:

- появляются пустые места;
- нужен cleanup/compaction;
- pop_best может платить за skipped tombstones.

## Почему Нужен Isolated Benchmark

Если мерить контейнер только внутри matching engine, будет сложно понять, кто виноват:

- id index;
- trade buffer;
- matching loop;
- price level container;
- benchmark harness.

Поэтому сначала контейнер измеряется отдельно.
