# Теория. Software Prefetch

`__builtin_prefetch(ptr, rw, locality)` просит CPU заранее подтянуть cache line.

Пример:

```cpp
__builtin_prefetch(&values[next_index], 0, 1);
```

Аргументы:

```text
ptr       address, который хотим подготовить
rw = 0    read
rw = 1    write
locality  насколько долго данные могут быть полезны в cache
```

Prefetch не гарантирует ускорение. Это hint. Он может:

- помочь скрыть memory latency;
- не успеть сработать;
- вытеснить полезные cache lines;
- добавить лишние инструкции.

Поэтому prefetch всегда проверяется измерениями и несколькими distances.
