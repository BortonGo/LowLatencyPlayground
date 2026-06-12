# Задача 2. Hot Path Allocation Cleanup

## Цель

Уменьшить количество аллокаций и rehash в hot path matching engine, а потом повторно проверить это benchmark-ом и profiling-ом.

Это задача не про то, чтобы сразу сделать идеальный HFT order book.

Цель проще:

```text
увидеть allocator в профиле -> сделать reserve -> проверить, стало ли меньше rehash/allocation noise
```

## Что Нужно Сделать

Добавь preallocation API:

```cpp
void reserve(std::size_t orders_count);
```

Минимально он нужен в:

```text
OrderBookSide
MatchingEngine
```

Пример API:

```cpp
template <OrderSide Side>
class OrderBookSide {
public:
    void reserve(std::size_t orders_count);
};
```

```cpp
class MatchingEngine {
public:
    void reserve(std::size_t orders_count);
};
```

## Требования

- `OrderBookSide::reserve()` должен заранее подготовить внутренние индексы.
- Если внутри есть несколько `unordered_map`, reserve нужен для каждой.
- `MatchingEngine::reserve()` должен вызвать reserve для buy и sell side.
- В benchmark-е вызови `engine.reserve(...)` до заполнения книги.
- Поведение engine не должно измениться.
- Существующие тесты должны проходить.
- После изменения повтори benchmark.
- После изменения повтори profiling через `sample`.

## Что Не Нужно Делать

Пока не надо:

- писать свой allocator;
- переписывать весь order book на массивы;
- удалять `std::unordered_map`;
- делать intrusive list;
- ломать API ради оптимизации.

Эта задача про маленькую проверяемую оптимизацию.

## Benchmark

Используй:

```text
benchmark_matching_engine
```

Сравни хотя бы два запуска:

```text
до reserve
после reserve
```

Если старые цифры уже есть в notes, можно сравнить с ними.

Смотри на:

- elapsed time;
- throughput;
- latency p95/p99, если benchmark их печатает;
- наличие больших хвостов;
- стабильность результатов между запусками.

## Profiling

Собери `RelWithDebInfo`:

```text
cmake -S . -B cmake-build-profile -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build cmake-build-profile --target benchmark_matching_engine
```

Запусти benchmark и сними sample:

```text
./cmake-build-profile/benchmark_matching_engine &
sample $! 10
```

Если benchmark заканчивается слишком быстро, временно увеличь workload.

## На Что Смотреть В Profile

После `reserve()` хочется увидеть меньше:

```text
std::__hash_table::__do_rehash
```

Но всё ещё могут остаться:

```text
operator new
malloc
free
std::__hash_table::__erase_unique
```

Это нормально.

`reserve()` уменьшает rehash, но не делает `unordered_map` allocation-free.

## Что Записать В Отчет

Создай файл:

```text
notes/stage_08_profiling/task_02_hot_path_allocation_cleanup/profiling_notes.md
```

Минимальный формат:

```text
# Hot Path Allocation Cleanup Notes

## Setup

Сборка:
Benchmark:
Инструмент:
Команда:

## Изменение

- ...

## До

- ...

## После

- ...

## Вывод

- ...

## Следующая Цель

- ...
```

## Критерии Готовности

- Есть `reserve()` в `OrderBookSide`.
- Есть `reserve()` в `MatchingEngine`.
- Benchmark вызывает reserve до hot path.
- Все тесты проходят.
- Есть повторный benchmark.
- Есть повторный profile.
- В notes написано, уменьшился ли `__do_rehash`.
- Ты можешь объяснить, почему `operator new/malloc` могли остаться.

## Подсказка 1

Для `std::unordered_map` чаще всего нужен именно:

```cpp
map.reserve(expected_elements);
```

Не `rehash()` наружу.

`reserve()` понятнее на уровне API: мы говорим, сколько элементов ожидаем.

## Подсказка 2

Если `reserve()` не изменил benchmark сильно, это не значит, что задача провалена.

Возможные причины:

- workload маленький;
- rehash был не главным bottleneck;
- node allocations всё ещё остались;
- benchmark меряет не только hot path;
- noise сильнее эффекта.

## Подсказка 3

Если после `reserve()` `__do_rehash` почти исчез, но `operator new` остался, это ожидаемо.

`std::unordered_map` может больше не перестраивать таблицу, но всё равно выделять память под новые node.

## Что Прислать На Review

Пришли:

- какие файлы менял;
- вывод benchmark до/после;
- кусок profile после изменения;
- свой вывод: что стало лучше, а что осталось проблемой.

