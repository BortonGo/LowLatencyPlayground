# Теория 2. Struct Layout, Padding and Alignment

## Почему Размер `struct` Может Быть Больше Суммы Полей

CPU эффективнее читает данные, когда они лежат по адресам, кратным их alignment.
Например, `std::uint64_t` обычно хочет alignment 8 bytes, `std::uint32_t` -
4 bytes, `bool` - 1 byte.

Из-за этого compiler добавляет padding между полями:

```cpp
struct Example {
    bool a;              // 1 byte
    std::uint64_t b;     // 8 bytes, wants alignment 8
};
```

Логически тут 9 bytes данных, но объект может занимать 16 bytes:

```text
[a][padding padding padding padding padding padding padding][b b b b b b b b]
```

## Почему Порядок Полей Важен

Если расположить поля от больших alignment к меньшим, padding часто уменьшается:

```cpp
struct Better {
    std::uint64_t b;
    bool a;
};
```

Размер все еще может быть больше 9 bytes из-за tail padding, но layout обычно
плотнее.

## Почему Это Важно Для Cache

Представь массив из миллиона объектов. Если один объект занимает 32 bytes вместо
16 bytes, ты читаешь примерно в 2 раза больше памяти при traversal.

Это влияет на:

- cache footprint;
- memory bandwidth;
- количество cache lines;
- prefetch efficiency;
- latency traversal.

В low-latency коде layout данных часто важнее, чем кажется по коду.

## `sizeof`, `alignof`, `offsetof`

Для исследования layout полезны:

```cpp
sizeof(T)
alignof(T)
offsetof(T, field)
```

`offsetof` работает для standard-layout types. Для простых `struct` без virtual
functions и сложного inheritance это обычно подходит.

## Важный Trade-off

Не надо всегда делать struct максимально маленькой. Иногда поля группируют не
только по размеру, но и по access pattern:

- hot fields рядом;
- cold fields отдельно;
- read-mostly fields отдельно от frequently-written fields;
- per-thread fields отдельно, чтобы избежать false sharing.

В этой задаче мы начнем с простого: увидим padding и сравним traversal по двум
layout variants.
