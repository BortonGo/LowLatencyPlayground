# Теория 1. Ring Buffer

## Зачем Нужен Ring Buffer

Ring buffer - это очередь фиксированного размера, которая использует заранее выделенный массив и два индекса:

- `head` - откуда читаем;
- `tail` - куда пишем.

Когда индекс доходит до конца массива, он возвращается в начало. Поэтому структура называется ring/circular buffer.

В low-latency коде ring buffer часто используют между stages pipeline:

- market data reader -> parser;
- parser -> strategy;
- strategy -> order sender;
- producer thread -> consumer thread.

Главное свойство: память выделяется заранее, а `push`/`pop` в hot path не делают allocation.

## Чем Ring Buffer Отличается От std::queue

`std::queue` - это adapter поверх другого container. По умолчанию обычно используется `std::deque`.
Он удобен, но не дает такой явной модели memory behavior, как заранее выделенный fixed-capacity buffer.

Ring buffer проще контролировать:

- capacity известна заранее;
- нет роста container в hot path;
- данные лежат компактно;
- поведение при заполнении explicit: `push` возвращает `false` или бросает ошибку.

## Full И Empty

Самая частая ловушка - отличить empty от full.

Если хранить только `head` и `tail`, состояние `head == tail` может означать и empty, и full.

Для учебной задачи выбери один простой вариант:

1. хранить отдельный `size`;
2. или оставлять один slot пустым;
3. или хранить счетчики `write_count/read_count`.

В этой задаче проще всего использовать `size`. Это чуть больше state, зато код легче проверить.

## Что Важно Измерять

Сначала важно не benchmark, а correctness:

- можно положить элемент и достать его;
- порядок FIFO сохраняется;
- wrap-around работает;
- full/empty состояния корректны;
- capacity не меняется.

После этого уже можно сравнить fixed ring buffer с вариантом на `std::queue`.

