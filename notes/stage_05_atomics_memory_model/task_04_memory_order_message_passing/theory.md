# Теория 4. Memory Order Message Passing

## Зачем Эта Задача

До этого ты уже использовал `acquire/release` в `SPSCQueue`.

Теперь цель - отдельно увидеть идею message passing:

```text
thread A пишет данные
thread A публикует flag
thread B видит flag
thread B читает данные
```

Это базовый паттерн для lock-free структур.

## Data Race И Synchronization

Если один thread пишет обычную переменную, а другой thread читает ее без
синхронизации, это data race.

Atomic flag может создать synchronization point:

```cpp
data = 42;
ready.store(true, std::memory_order_release);
```

И другой thread:

```cpp
while (!ready.load(std::memory_order_acquire)) {
}

// здесь можно читать data
```

Если consumer увидел `ready == true` через acquire load, он должен увидеть
обычные writes, которые producer сделал до release store.

## Relaxed Не Публикует Данные

`memory_order_relaxed` гарантирует atomicity только для самой atomic переменной.

Он не говорит CPU/compiler:

```text
эти обычные writes должны быть видны до flag
```

Поэтому relaxed flag сам по себе не является надежной публикацией данных.

## Seq Cst

`seq_cst` проще для рассуждения, но часто сильнее, чем нужно.

Для message passing обычно достаточно:

```text
producer: release store
consumer: acquire load
```

## HFT-Мышление

В low-latency коде важно уметь выбирать самый слабый memory order, который
корректен.

Но слабее корректного выбирать нельзя. Быстрый UB - это не оптимизация.

