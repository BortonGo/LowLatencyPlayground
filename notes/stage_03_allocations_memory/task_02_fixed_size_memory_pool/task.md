# Задача 2. Fixed-Size Memory Pool Benchmark

## Цель

Написать маленький fixed-size memory pool для `Message` и сравнить его с `new/delete`.

Главная цель - увидеть, как заранее выделенная память меняет latency distribution и почему pools часто используют
в hot path.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_03_allocations_memory/benchmark_fixed_pool.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(benchmark_fixed_size_pool
        benchmarks/stage_03_allocations_memory/benchmark_fixed_pool.cpp
)

target_include_directories(benchmark_fixed_size_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_fixed_size_pool
./cmake-build-release/benchmark_fixed_size_pool
```

## Что Нужно Сделать

Сделай benchmark с двумя cases:

1. `new_delete`
2. `fixed_pool`

Оба cases должны выполнять одинаковую логическую работу:

- получить `Message`;
- заполнить поля по sequence/index;
- добавить часть полей в checksum;
- вернуть/освободить объект.

Разница только в том, откуда берется объект:

- в `new_delete` объект создается через heap allocation и удаляется после использования;
- в `fixed_pool` объект берется из заранее созданного пула и возвращается обратно в пул.

## Идея Memory Pool Простыми Словами

Представь, что вместо того чтобы каждый раз просить память у heap через `new`, ты заранее создаешь небольшой склад
готовых `Message`.

До benchmark:

- создаешь массив/вектор из `Message`;
- создаешь список свободных индексов;
- сначала все индексы свободны.

Во время benchmark:

- `acquire()` берет один свободный index;
- возвращает указатель на `Message` внутри заранее созданного storage;
- код заполняет объект и использует его;
- `release()` возвращает index обратно в free list.

Главное: сам storage уже создан заранее. Внутри measured loop pool не должен делать `push_back`, `resize`, `new`,
`delete` или любое другое скрытое выделение памяти.

## Требования К Pool

- Pool выделяет память до benchmark.
- Capacity задается явно.
- В measured loop не должно быть heap allocation.
- Pool должен уметь выдать объект и принять его обратно.
- Если свободных slots нет, поведение должно быть явным и заметным.
- Для этой задачи не нужен thread-safe pool.
- Для этой задачи не нужен полноценный STL allocator.

## Рекомендуемая Структура Кода

Файл можно организовать примерно так:

```text
includes
config constants
Message
BenchmarkResult
printStats
FixedMessagePool
runNewDelete
runFixedPool
main
```

`Message` можно взять похожий на прошлую задачу. Желательно вынести заполнение в helper, чтобы оба cases делали
одинаковую работу:

```cpp
struct Message {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t side;
    std::uint8_t type;
};

void fill_message(Message& message, std::uint64_t sequence);
```

Pool можно сделать отдельным маленьким классом. Полный код специально не даю, но форма может быть такой:

```cpp
class FixedMessagePool {
public:
    explicit FixedMessagePool(std::size_t capacity);

    Message* acquire();
    void release(Message* message);

    std::size_t capacity() const;
    std::size_t available() const;

private:
    // storage для Message
    // free list для свободных slots
};
```

Внутри pool тебе нужны две сущности:

- storage, где реально лежат `Message`;
- free list, где лежат свободные slots.

Самый простой вариант для учебной задачи:

- `std::vector<Message>` как storage;
- `std::vector<std::size_t>` как free list индексов.

Важно: оба vector должны полностью подготовиться в constructor pool. В measured loop нельзя делать так, чтобы они
увеличивали capacity.

## Как Должен Работать acquire/release

`acquire()`:

- проверяет, есть ли свободный slot;
- если свободных slots нет, явно сообщает об ошибке;
- берет последний свободный index из free list;
- возвращает указатель на объект в storage по этому index.

`release()`:

- получает указатель, который раньше выдал `acquire()`;
- понимает, какому slot он соответствует;
- возвращает index обратно в free list.

Для этой задачи можно считать, что `release()` вызывается корректно: только для указателей из этого pool и без double
release. Но если хочешь потренироваться, можешь добавить простую проверку.

## Форма Case `new_delete`

Логика примерно такая же, как в прошлой задаче:

```text
создать timer
checksum = 0
sequence = 0

в measured work:
    создать Message через new
    заполнить Message
    добавить price/quantity в checksum
    удалить Message
```

Чтобы compiler не спрятал allocation, можешь оставить подход из прошлой задачи: отдельные `noinline` helper-ы для
создания и удаления.

## Форма Case `fixed_pool`

Здесь pool создается до запуска timer:

```text
создать FixedMessagePool с нужной capacity
создать timer
checksum = 0
sequence = 0

в measured work:
    взять Message из pool
    заполнить Message
    добавить price/quantity в checksum
    вернуть Message в pool
```

После benchmark можно вывести не только checksum, но и `pool.available()`. В нормальном варианте после прогона все
slots должны вернуться обратно.

## Рекомендуемая Конфигурация

```text
pool_capacity       : 1024
warmup_iterations  : 10'000
measured_iterations: 100'000
```

Если снова видишь много `0ns`, сделай batch внутри measured iteration:

```text
batch_size          : 64 или 256
measured_iterations: 10'000 или 50'000
```

В таком режиме один sample измеряет batch операций. В output явно напиши batch size, чтобы потом не забыть, что именно
сравнивается.

## Batch Вариант

Если хочешь убрать `Median: 0ns`, сделай batch без изменения смысла benchmark:

```text
внутри одной measured iteration:
    повторить batch_size раз:
        acquire/new
        fill
        checksum
        release/delete
```

Тогда один sample будет временем пачки операций. Это не совсем "latency одной операции", зато лучше видно различие
между approaches на текущем таймере.

Не дели samples внутри `LatencyStats` на batch size в этой задаче. Просто явно напиши `batch_size` в output и сравнивай
как batch cost. Потом отдельно обсудим, как правильно делать per-operation normalization.

## Важные Ограничения

- Не печатай внутри measured loop.
- Не генерируй random внутри measured loop.
- Не расширяй pool автоматически.
- Не используй `std::shared_ptr` или `std::unique_ptr` для hot path в этой задаче.
- Не делай pool глобальным singleton.
- Запускай benchmark в Release build.

## Output Format

Пример формы:

```text
=== NEW_DELETE ===
Count: ...
Min: ...
Max: ...
Mean: ...
Median: ...
p95: ...
p99: ...
p99.9: ...
p99.99: ...
p99.999: ...
checksum: ...

=== FIXED_POOL ===
Count: ...
...
checksum: ...
```

Если используешь batch, добавь в начало:

```text
batch_size: ...
```

## Критерии Готовности

- `new_delete` действительно делает allocation/deallocation в measured work.
- `fixed_pool` не делает heap allocation в measured work.
- Pool создается до запуска benchmark.
- Checksums для обоих cases выводятся и не равны нулю.
- Output показывает latency stats для обоих cases.
- Benchmark запускается в Release build.
- Ты можешь своими словами объяснить, почему pool может уменьшать tail latency.
- Ты можешь объяснить, что pool ограничен capacity и это осознанный trade-off.

## Частые Ошибки

- Создать pool внутри measured lambda. Тогда ты измеряешь создание pool, а не acquire/release.
- Делать `storage.push_back()` внутри `acquire()`. Тогда allocation может снова попасть в hot path.
- Забыть вернуть объект в pool. Тогда free list закончится.
- Сравнить разные работы: например, в `new_delete` заполнять одни поля, а в `fixed_pool` другие.
- Использовать `std::vector<bool>` для служебных flags. Он необычный и может спутать картину.
- Спрятать ошибку exhausted pool и молча вернуть `nullptr`, а потом случайно получить undefined behavior.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_03_allocations_memory/benchmark_fixed_pool.cpp`;
- изменения в `CMakeLists.txt`;
- пример output из Release build;
- короткое объяснение результата своими словами.
