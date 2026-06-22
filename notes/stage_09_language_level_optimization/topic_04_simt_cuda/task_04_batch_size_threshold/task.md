# Задача 4. Batch Size Threshold Decision

## Цель

По цифрам task 2-3 принять инженерное решение: есть ли batch size, на котором CUDA validation
выгоднее CPU с учетом всех копирований.

Это report task. Новый kernel и новый benchmark не нужны.

## Входные Данные

Используй медианы из task 2 и task 3 для batch sizes:

```text
1K, 10K, 100K, 1M, 10M
```

Если в task 3 какая-то строка была снята меньше чем 10 раз или flags не совпали с CPU,
не используй ее для threshold decision: сначала пересними.

## Главная Таблица

В `profiling_notes.md` собери одну итоговую таблицу:

```text
batch | CPU scalar | CUDA kernel-only | H2D | D2H | CUDA full path | full path faster? | notes
```

В `full path faster?` пиши `yes` только если:

```text
CUDA full path median < CPU scalar median
```

## Как Определить Threshold

Threshold - это не первая случайно удачная строка.

Определи его так:

```text
smallest tested batch where CUDA full path is faster than CPU
and remains faster at every larger tested batch
```

Если такого batch нет, честный результат:

```text
No threshold found in tested range.
```

Отдельно можно назвать kernel-only threshold, но не путай его с full-path threshold.

## Decision Section

Ответь коротко на пять вопросов:

1. Где CPU scalar быстрее и почему?
2. Где CUDA kernel-only быстрее?
3. Где CUDA full path быстрее?
4. Какой full-path threshold или почему его нет?
5. Где такой GPU workflow мог бы жить в low-latency системе?

Для пятого пункта выбери из конкретных вариантов:

```text
offline replay/backtest
large risk pre-check batch
end-of-day analytics
market-data batch pre-validation
```

И отдельно напиши, почему это не подходит для одного live order в matching engine:

```text
launch overhead + transfer overhead + batching delay
```

## Не Нужно

- переносить live matching на GPU;
- подгонять batch size ради красивой победы CUDA;
- делать вывод по одному kernel-only числу.
