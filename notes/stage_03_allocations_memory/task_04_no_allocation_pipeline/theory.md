# Теория 4. No-Allocation Hot Path

## Почему Это Следующий Шаг

Мы уже сравнили:

- `new/delete`;
- fixed-size pool;
- generic `ObjectPool<T>`.

Теперь важно применить идею к маленькому pipeline: данные проходят несколько
стадий обработки, а hot path не должен выделять память.

В реальных low-latency системах часто есть поток:

```text
raw message -> parsed event -> validation/filter -> aggregation/output
```

Если на каждой стадии создавать `std::string`, `std::vector`, `std::function`,
heap objects или temporary containers, latency начинает зависеть от allocator.

## Что Такое Hot Path

Hot path - участок кода, который выполняется очень часто и влияет на latency.

Для этой задачи hot path:

```text
process_message(input, output)
```

Он должен:

- прочитать входной message;
- обновить counters/state;
- записать output event в заранее выделенный buffer;
- не делать heap allocation.

## Как Проверять "No Allocation"

Идеально это проверяют custom allocators, malloc hooks, sanitizers/profilers или
instrumentation. Но для учебной задачи начнем проще:

- не использовать containers, которые растут внутри measured loop;
- заранее `reserve`;
- использовать fixed-size arrays/buffers;
- не создавать strings;
- не использовать `new/delete` в processing function;
- проверять sizes/capacity до и после.

## Важная Идея

No-allocation code не обязательно красивее. Он часто требует:

- заранее выбранной capacity;
- явного overflow behavior;
- более простых data structures;
- разделения setup и processing.

Это trade-off: меньше runtime surprise, но больше ответственности на design.
