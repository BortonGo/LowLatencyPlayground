# Задача 1. CUDA Environment Smoke Test

## Цель

Проверить, что CUDA machine готова для experiments.

## Что Сделать

В отдельной папке:

```text
cuda_experiments/smoke_test/
```

Создай:

```text
CMakeLists.txt
main.cu
README.md
```

Kernel должен сделать простой vector add и проверить результат.

## Report

В `profiling_notes.md` запиши:

- GPU model;
- CUDA toolkit version;
- compiler;
- OS;
- команда сборки;
- результат запуска.

## Не Нужно

- подключать CUDA к основному Mac build.
