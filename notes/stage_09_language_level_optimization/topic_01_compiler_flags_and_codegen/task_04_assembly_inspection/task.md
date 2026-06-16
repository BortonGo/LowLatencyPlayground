# Задача 4. Assembly Inspection

## Цель

Научиться смотреть generated code для маленького hot loop.

## Что Сделать

Выбери 1-2 функции из предыдущих benchmarks.

Сохрани assembly через один из способов:

```text
clang++ -S
llvm-objdump -d
CLion disassembly
```

Сравни assembly для:

- `-O0`;
- `-O2`;
- `-O3`;
- `-O3 + -march=native`.

## Report

В `profiling_notes.md` запиши:

- какие функции смотрел;
- какие отличия увидел;
- появились ли vector instructions;
- исчезли ли function calls;
- стал ли loop проще.

## Не Нужно

- становиться assembly expert;
- править код только из-за красивого assembly.
