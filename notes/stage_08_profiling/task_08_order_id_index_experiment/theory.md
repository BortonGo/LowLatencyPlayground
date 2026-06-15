# Теория. Dense Order Id Index

`std::unordered_map` удобен и универсален.

Но универсальность стоит дорого:

- node allocation на insert;
- free/delete на erase;
- pointer chasing;
- hash;
- bucket management;
- possible rehash.

В low-latency hot path это часто заметно.

## Когда Dense Index Работает

Dense index хорош, если ids лежат в понятном диапазоне:

```text
1..N
```

Тогда вместо hash table можно использовать vector:

```text
order_id -> array index
```

Lookup становится простым индексированием.

## Tradeoffs

Плюсы:

- меньше pointer chasing;
- меньше аллокаций;
- быстрый find/erase;
- predictable memory access.

Минусы:

- нужен bounded id range;
- память зависит от max id, а не от active orders;
- sparse ids могут тратить много памяти;
- нужна аккуратная логика empty/occupied.

## Почему Это Отдельная Задача

Не надо сразу встраивать dense index в engine.

Сначала нужно проверить саму идею:

```text
unordered_map vs dense index
```

Если experiment покажет явный выигрыш, тогда следующая задача может быть integration в flat side.
