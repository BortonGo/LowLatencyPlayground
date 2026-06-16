# Задача 3. builtin_expect

## Цель

Сравнить `__builtin_expect` с baseline и `[[likely]]`.

## Что Сделать

Добавь helper macro или function wrapper:

```cpp
expected(condition, true)
expected(condition, false)
```

Сравни:

- baseline;
- `[[likely]]`;
- `__builtin_expect`;
- wrong expectation.

## Report

В `profiling_notes.md` запиши:

- поддерживается ли builtin текущим compiler;
- numbers;
- отличается ли от `[[likely]]`;
- стоит ли его использовать в этом проекте.

## Не Нужно

- оборачивать все branches macro;
- делать compiler-specific код без оговорок.
