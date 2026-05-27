# Теория 3. ObjectPool<T>

## Зачем Обобщать Fixed Pool

В прошлой задаче pool был привязан к одному типу:

```cpp
FixedMessagePool
```

Это удобно для первого шага, но в реальном коде похожая механика часто нужна
для разных типов:

- messages;
- orders;
- events;
- temporary objects;
- nodes;
- buffers.

Следующий шаг - сделать `ObjectPool<T>`, который умеет хранить объекты одного
типа `T`, но не привязан к конкретному `Message`.

## Что Не Нужно Делать Пока

Пока не надо делать production-grade allocator.

В этой задаче не нужны:

- STL allocator interface;
- thread-safety;
- lock-free free list;
- raw uninitialized storage;
- placement new;
- perfect forwarding;
- custom deleter для smart pointers.

Мы пока тренируем базовую механику:

```text
preallocate storage
acquire object
use object
release object
reuse object
```

## Почему Не Placement New

Более правильный pool часто хранит raw memory и вручную вызывает constructor и
destructor через placement new. Это важная тема, но она добавляет много
деталей:

- object lifetime;
- alignment;
- exception safety;
- destructors;
- non-trivial types.

Сейчас можно проще: хранить `std::vector<T> storage`. Это значит, что все `T`
создаются заранее в constructor pool. Для учебной задачи этого достаточно.

## Главная Идея API

```cpp
ObjectPool<Message> pool(1024);

Message* msg = pool.acquire();
// use msg
pool.release(msg);
```

То же самое должно работать для другого типа:

```cpp
ObjectPool<Order> pool(2048);
Order* order = pool.acquire();
pool.release(order);
```

## Ограничения Такого Pool

Такой pool:

- требует default-constructible `T`;
- имеет fixed capacity;
- не потокобезопасный;
- не ловит все виды misuse, если специально не добавить checks;
- хранит объекты alive все время жизни pool.

Это нормально для этой задачи. Мы сначала хотим понять generic design и
стоимость acquire/release.
