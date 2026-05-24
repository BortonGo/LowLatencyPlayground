# Теория 1. False Sharing

## Что Такое Cache Line

CPU не читает память по одному `int` или одному `std::atomic`. Обычно данные
загружаются блоками фиксированного размера - cache lines. На многих современных
CPU cache line равна 64 bytes.

Если два значения лежат рядом в памяти, они могут оказаться в одной cache line:

```text
cache line 64 bytes
[ counter_a ][ counter_b ][ other data ... ]
```

Это хорошо для sequential read, но может быть плохо для concurrent writes.

## Что Такое False Sharing

False sharing возникает, когда разные threads пишут в разные variables, но эти
variables лежат в одной cache line.

На уровне C++ кажется, что данные независимые:

```cpp
counter_a++;
counter_b++;
```

Но на уровне CPU оба counter могут делить одну cache line. Если thread 1 пишет
в `counter_a`, а thread 2 пишет в `counter_b`, cache coherence protocol вынужден
постоянно передавать ownership одной и той же cache line между cores.

Итог: threads не делят одну logical variable, но все равно мешают друг другу.

## Почему Это Важно Для Low Latency

False sharing может превращать простой atomic counter в источник latency spikes.
Код выглядит lock-free, но фактически cores начинают бороться за cache line.

Это особенно важно в:

- counters и metrics;
- producer/consumer queues;
- ring buffers;
- per-thread state;
- order book или market data pipeline state;
- structures с hot fields рядом друг с другом.

## Как Обычно Избегают False Sharing

Горячие данные, которые часто пишутся разными threads, разводят по разным cache
lines. Для этого используют padding или alignment.

Пример формы:

```cpp
struct alignas(64) PaddedCounter {
    std::atomic<std::uint64_t> value{0};
};
```

Важно: `alignas(64)` сам по себе не всегда гарантирует, что внутри массива два
объекта не будут делить cache line, если размер объекта меньше 64 bytes. Поэтому
обычно добавляют padding до полного размера cache line.

В C++17 есть constants:

```cpp
std::hardware_destructive_interference_size
std::hardware_constructive_interference_size
```

Но для учебной задачи можно использовать `64` явно, чтобы увидеть механику.

## Что Мы Хотим Увидеть

Сравнить два варианта:

1. два atomic counters лежат рядом;
2. два atomic counters разведены по разным cache lines.

Ожидаемое наблюдение:

- unpadded version медленнее;
- padded version быстрее и стабильнее;
- разница сильнее проявляется при большом количестве increments.
