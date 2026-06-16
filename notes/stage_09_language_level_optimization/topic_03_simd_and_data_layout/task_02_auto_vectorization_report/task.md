# Задача 2. Auto-Vectorization Report

## Цель

Увидеть, какие loops compiler vectorizes automatically.

## Что Сделать

Используй benchmark из task 1.

Собери с clang remarks:

```text
-Rpass=loop-vectorize
-Rpass-missed=loop-vectorize
-Rpass-analysis=loop-vectorize
```

## Report

В `profiling_notes.md` запиши:

- какие loops vectorized;
- какие missed;
- почему missed;
- что изменилось после SoA.

## Не Нужно

- писать manual SIMD;
- менять engine.
