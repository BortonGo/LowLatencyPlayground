# Задача 3. Link Time Optimization

## Цель

Проверить, помогает ли LTO на маленьких hot-path helpers.

## Что Сделать

Добавь benchmark или используй task 1 benchmark.

Сравни:

- Release without LTO;
- Release with LTO;
- Release + `-O3` without LTO;
- Release + `-O3` with LTO.

## На Что Смотреть

- throughput;
- binary size;
- build time;
- инлайнинг между translation units.

## Report

В `profiling_notes.md` запиши:

- как включал LTO;
- numbers;
- изменился ли binary size;
- стоит ли LTO держать как release option.

## Не Нужно

- включать LTO везде без сравнения;
- смешивать с SIMD/CUDA.
