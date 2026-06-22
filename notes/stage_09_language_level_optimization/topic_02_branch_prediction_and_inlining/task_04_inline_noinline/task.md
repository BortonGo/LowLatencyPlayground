# Задача 4. Inline/noinline

## Цель

Проверить на маленькой validation-функции, когда compiler сам делает inline,
что меняет forced inline и сколько стоит гарантированный function call.

Это не задача про "всегда пиши inline". Твоя цель - увидеть три разных generated code.

## Файл И Target

Работай в уже созданном файле:

```text
benchmarks/stage_09_language_level_optimization/benchmark_inline_noinline.cpp
```

Добавь target в `CMakeLists.txt`:

```text
benchmark_inline_noinline
```

## Данные

1. Подготовь `std::vector<llp::Order>` из `1'000'000` orders до начала измерений.
2. Сделай два набора: `99% valid` и `50% valid`.
3. Valid order: `id != 0 && price != 0`.
4. Invalid order: занули только `id` или только `price`.
5. Перемешай набор фиксированным `std::mt19937_64` seed.

Не создавай orders внутри измеряемого участка.

## Четыре Варианта Одной Проверки

Во всех вариантах должна быть одинаковая логика и одинаковый checksum.

```cpp
bool is_valid(const llp::Order& order);
```

Сделай benchmark для таких форм:

1. `inside loop`: условие написано прямо в цикле.
2. `normal helper`: цикл вызывает обычный `is_valid(order)` без forced attributes.
3. `always inline`: helper с `[[gnu::always_inline]] inline`.
4. `noinline`: helper с `[[gnu::noinline]]`.

Для `always_inline` и `noinline` добавь guard для Clang/GCC. На неизвестном compiler
пусть атрибуты превращаются в пустые macros, а notes это фиксируют.

Каждый вариант делает одинаковое действие:

```text
valid   -> count += 1, checksum += order.id
invalid -> checksum += order.quantity
```

Возвращай или печатай checksum, чтобы compiler не выбросил loop.

## Запуск

Собери Release:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target benchmark_inline_noinline
./cmake-build-release/benchmark_inline_noinline
```

Сделай минимум 5 запусков. В notes запиши медиану elapsed для каждого варианта.

## Assembly Check

Сгенерируй `-O3` assembly для этого benchmark.

Проверь:

```text
inside loop       -> call внутри loop отсутствует
normal helper     -> compiler мог inline сам
always inline     -> call внутри loop отсутствует
noinline          -> есть call/bl внутри loop
```

Не сравнивай размер всего `.s` файла. Ищи функцию validation и тело hot loop.

## Report

В `profiling_notes.md` добавь:

- таблицу `99%` и `50%` с четырьмя вариантами;
- checksum для каждого набора;
- ссылки на строки assembly, где виден или отсутствует call;
- ответ: normal helper был автоматически inline или нет;
- вывод: где forced inline не дал измеримого выигрыша.

## Не Нужно

- добавлять forced inline в production engine;
- делать helper сложнее одной validation-проверки;
- объявлять победителем вариант по одному запуску.
