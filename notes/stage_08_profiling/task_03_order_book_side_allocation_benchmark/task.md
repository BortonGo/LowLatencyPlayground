# Задача 3. OrderBookSide Allocation Benchmark

## Цель

Отдельно измерить allocator noise внутри `OrderBookSide`, без шума полного `MatchingEngine`.

После `reserve()` стало видно, что `__do_rehash` ушёл из hot path, но остались:

```text
operator new
malloc
free
std::__hash_table::__erase_unique
std::deque::erase
```

Цель этой задачи:

```text
не менять структуру данных -> изолировать проблему -> понять, какая операция дороже
```

## Что Нужно Сделать

Добавь отдельный benchmark:

```text
benchmarks/stage_08_profiling/benchmark_order_book_side_allocations.cpp
```

Если папки `benchmarks/stage_08_profiling` ещё нет, создай её.

Добавь benchmark в `CMakeLists.txt`:

```cmake
add_llp_benchmark(benchmark_order_book_side_allocations
        benchmarks/stage_08_profiling/benchmark_order_book_side_allocations.cpp)
```

## Benchmark Scenarios

Минимум нужны сценарии:

- `add_resting_orders`
- `cancel_orders`
- `pop_best_orders`
- `add_then_cancel_repeated`

Используй:

```cpp
llp::OrderBookSide<llp::OrderSide::Sell>
```

Для начала price range маленький:

```text
100..109
```

Количество заявок сделай достаточно большим, например:

```text
1'000'000 или 10'000'000
```

## Требования

- В benchmark-е должен быть checksum или другой guard от оптимизации компилятором.
- Подготовка входных orders не должна попадать в измеряемую часть.
- Для варианта с `reserve()` вызывай `book.reserve(count)` до измерения.
- Выведи elapsed time и throughput.
- Сравни сценарии с `reserve()` и без `reserve()`.
- Поведение `OrderBookSide` менять не нужно.

## Profiling

Собери `RelWithDebInfo`:

```text
cmake -S . -B cmake-build-profile -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build cmake-build-profile --target benchmark_order_book_side_allocations
```

Запусти benchmark и сними sample:

```text
./cmake-build-profile/benchmark_order_book_side_allocations &
sample $! 10 -file profile_order_book_side_allocations.txt
```

## На Что Смотреть В Profile

Отдельно проверь:

- есть ли `__do_rehash` без `reserve()`;
- исчезает ли `__do_rehash` после `reserve()`;
- остаётся ли `operator new` на `unordered_map::emplace`;
- остаётся ли `free` на `unordered_map::erase`;
- виден ли `std::deque::erase`;
- виден ли `std::deque::__add_back_capacity`.

## Что Записать В Отчет

Создай файл:

```text
notes/stage_08_profiling/task_03_order_book_side_allocation_benchmark/profiling_notes.md
```

Минимальный формат:

```text
# OrderBookSide Allocation Benchmark Notes

## Setup

Сборка:
Benchmark:
Инструмент:
Команда:

## Scenarios

- ...

## Results

- ...

## Profile

- ...

## Вывод

- ...

## Следующая Цель

- ...
```

## Критерии Готовности

- Есть отдельный benchmark для `OrderBookSide`.
- Есть сценарии add/cancel/pop/repeated.
- Есть сравнение с `reserve()` и без.
- Есть profile file.
- В notes написано, какие allocator hotspots остались.
- Ты можешь объяснить, почему `reserve()` не убирает node allocations.

## Подсказка 1

Эта задача не про ускорение.

Она про то, чтобы получить чистую картинку:

```text
какая операция в OrderBookSide реально шумит
```

## Подсказка 2

Если `sample` снова захватывает startup, увеличь workload или запусти benchmark так, чтобы он работал дольше.

## Что Прислать На Review

Пришли:

- benchmark file;
- изменения в `CMakeLists.txt`;
- benchmark output;
- profile observations;
- короткий вывод: что менять следующим.
