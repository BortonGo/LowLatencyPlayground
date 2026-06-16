# Задача 2. likely/unlikely

## Цель

Проверить C++ attributes `[[likely]]` и `[[unlikely]]`.

## Что Сделать

На benchmark из task 1 добавь варианты:

- baseline;
- valid path `[[likely]]`;
- invalid path `[[unlikely]]`;
- намеренно неправильный hint для контроля.

## Report

В `profiling_notes.md` запиши:

- где hints помогли;
- где не изменили результат;
- где неправильный hint навредил;
- стоит ли применять hints в validation code.

## Не Нужно

- расставлять hints в production headers;
- делать builtin_expect в этой задаче.
