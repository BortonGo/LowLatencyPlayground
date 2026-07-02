# Теория. Ring Index Update

Ring buffer часто обновляет index:

```cpp
index = (index + 1) % capacity;
```

Но `%` может быть дорогой операцией, если divisor runtime value.

Для power-of-two capacity можно заменить modulo на bitmask:

```cpp
index = (index + 1) & (capacity - 1);
```

Это работает только если `capacity` равен степени двойки.

Branch reset иногда тоже быстрый:

```cpp
++index;
if (index == capacity) {
    index = 0;
}
```

Branch почти всегда not taken, поэтому predictor обычно справляется.

Эта задача учит не просто "mask быстрее", а когда это корректно и когда compiler
сам уже может помочь.
