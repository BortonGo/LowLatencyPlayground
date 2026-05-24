# Теория 3. `std::vector` vs `std::list`

## Почему Это Важно

`std::vector` и `std::list` часто сравнивают по сложности операций:

- `vector`: random access `O(1)`, insert в середину `O(n)`;
- `list`: insert/erase по iterator `O(1)`, проход `O(n)`.

Но в performance engineering Big-O недостаточно. На реальном CPU важны:

- cache locality;
- prefetching;
- количество pointer dereference;
- allocation pattern;
- branch predictability;
- размер данных и layout в памяти.

## Как `vector` Лежит В Памяти

`std::vector<T>` хранит элементы подряд:

```text
[T][T][T][T][T][T][T]
```

Это удобно для CPU:

- соседние элементы часто попадают в одну cache line;
- hardware prefetcher может заранее подтягивать следующие cache lines;
- traversal обычно превращается в простой linear scan.

## Как `list` Лежит В Памяти

`std::list<T>` обычно хранит каждый node отдельно:

```text
[node] -> [node] -> [node] -> [node]
```

Каждый node содержит сам value и pointers на соседей. Nodes могут быть разбросаны
по heap. При traversal CPU часто вынужден:

- загрузить node;
- прочитать pointer на следующий node;
- перейти по pointer;
- ждать memory load, если следующего node нет в cache.

Это называется pointer chasing. Для latency это часто плохо.

## Почему `list` Может Проигрывать Даже При `O(1)`

`list` действительно умеет вставлять элемент за `O(1)`, если iterator уже есть.
Но получение нужного iterator часто требует прохода по списку. А сам проход по
списку плохо дружит с cache.

Поэтому в low-latency C++ `std::vector` часто оказывается быстрее даже там, где
теоретическая сложность выглядит хуже.

## Что Мы Проверим

В этой задаче benchmark должен сравнить traversal:

- заполнить `std::vector<int>` и `std::list<int>` одинаковыми значениями;
- пройти по всем элементам;
- посчитать сумму;
- сравнить latency distribution.

Ожидаемое наблюдение:

- `vector` обычно быстрее на traversal;
- `list` может иметь хуже median и tail;
- чем больше данных, тем сильнее может проявиться cache effect.

## HFT-Мышление

В hot path структура данных выбирается не только по Big-O. Нужно думать:

- как данные лежат в памяти;
- сколько cache lines нужно прочитать;
- есть ли pointer chasing;
- сколько allocation было сделано;
- можно ли пройти данные последовательно.

Контейнер с "красивой" сложностью может быть плохим выбором, если он заставляет
CPU постоянно ждать память.
