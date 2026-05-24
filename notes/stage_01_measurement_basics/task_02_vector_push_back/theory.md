# Теория 2. `std::vector::push_back` and `reserve()`

## Зачем Этот Benchmark

`std::vector` хранит элементы в contiguous memory. Это хорошо для cache locality:
CPU может читать соседние элементы предсказуемо, а hardware prefetcher часто
успевает подтянуть следующие cache lines заранее.

Но у `vector` есть важный эффект: когда capacity заканчивается, `push_back`
вызывает reallocation.

Reallocation обычно означает:

- выделить новый блок памяти;
- переместить или скопировать старые элементы;
- освободить старый блок;
- записать новый элемент.

Для average latency это может выглядеть терпимо, но tail latency часто сразу
портится: большинство `push_back` быстрые, а редкие итерации с reallocation
становятся намного медленнее.

## Что Делает `reserve()`

`reserve(n)` заранее просит `vector` выделить память минимум под `n` элементов.
Если ты заранее знаешь верхнюю границу размера, `reserve()` может убрать
reallocation из hot path.

Важно: `reserve()` меняет capacity, но не меняет size.

```cpp
std::vector<int> values;
values.reserve(1000);

// values.size() == 0
// values.capacity() >= 1000
```

## Что Мы Хотим Увидеть

В benchmark должны быть две версии:

1. `push_back` без `reserve()`.
2. `push_back` с `reserve()`.

Ожидаемое наблюдение:

- median может отличаться не очень сильно;
- p95/p99/max у версии без `reserve()` могут быть заметно хуже;
- версия с `reserve()` должна иметь более стабильную latency distribution.

## HFT-Мышление

В low-latency системах проблема часто не в том, что операция иногда занимает
на 5 ns больше. Проблема в том, что одна редкая reallocation может внезапно
превратить короткую операцию в длинную.

Поэтому в hot path обычно стараются:

- выделять память заранее;
- переиспользовать buffers;
- иметь понятные upper bounds;
- отделять initialization/setup от processing.

## Ограничение Первого Benchmark

Этот benchmark не будет идеальным. На результат могут влиять:

- timer overhead;
- optimizer;
- allocator state;
- CPU frequency scaling;
- OS scheduling;
- debug vs release build.

Пока задача не в том, чтобы получить "абсолютную истину". Задача - научиться
строить эксперимент так, чтобы увидеть форму latency distribution.
