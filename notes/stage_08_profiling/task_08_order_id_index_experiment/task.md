# Задача 8. Order Id Index Experiment

## Цель

Проверить, насколько дорого обходится `std::unordered_map` в hot path.

В предыдущих profiles часто видны:

```text
std::__hash_table::__emplace_unique
std::__hash_table::__erase_unique
operator new
malloc
free
```

Цель:

```text
measure unordered_map index cost -> compare with denser id-index experiment
```

## Что Нужно Сделать

Добавь экспериментальную структуру, не заменяя production code:

```text
include/llp/order_id_index.hpp
```

Минимальная идея:

- bounded dense id range;
- `std::vector<std::uint64_t>` или маленький struct для index/value;
- ability to insert/find/erase;
- missing id должен возвращать false/null.

Можно сделать очень простой вариант:

```cpp
class DenseOrderIdIndex {
public:
    explicit DenseOrderIdIndex(std::size_t max_order_id);
    bool insert(std::uint64_t order_id, std::uint64_t level_index);
    bool find(std::uint64_t order_id, std::uint64_t& level_index) const;
    bool erase(std::uint64_t order_id);
    void clear() noexcept;
};
```

## Tests

Добавь:

```text
tests/test_order_id_index.cpp
```

Покрой:

- empty find;
- insert/find;
- duplicate insert rejected;
- erase existing;
- erase missing;
- out-of-range rejected;
- clear resets state.

## Benchmark

Добавь:

```text
benchmarks/stage_08_profiling/benchmark_order_id_index.cpp
```

Сравни:

- `std::unordered_map<std::uint64_t, std::uint64_t>`;
- `DenseOrderIdIndex`.

Сценарии:

- insert sequential ids;
- find sequential ids;
- erase sequential ids;
- mixed insert/find/erase.

## Report

Создай:

```text
notes/stage_08_profiling/task_08_order_id_index_experiment/profiling_notes.md
```

В отчете напиши:

- где dense index быстрее;
- где он хуже или ограничен;
- какие ограничения у bounded id range;
- стоит ли потом встраивать его в `PriceLevelArrayBookSide`.

## Критерии Готовности

- Есть экспериментальный `OrderIdIndex`.
- Есть tests.
- Есть benchmark.
- Есть comparison против `unordered_map`.
- Есть notes с выводом.
- Production `OrderBookSide` не переписан.

## Что Не Нужно Делать

Пока не надо:

- встраивать index в matching engine;
- делать tombstones в price levels;
- делать allocator;
- делать универсальную production-ready структуру.
