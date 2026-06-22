# Задача 1. CUDA Environment Smoke Test

## Цель

Проверить NVIDIA/CUDA machine отдельно от основного C++ проекта.
До этой задачи мы не обсуждаем производительность: только "можем собрать, запустить kernel и проверить ответ".

## Структура

На CUDA машине создай отдельную папку в repo:

```text
cuda_experiments/smoke_test/
  CMakeLists.txt
  main.cu
  README.md
```

Не добавляй эту папку в корневой `CMakeLists.txt`: Mac без CUDA должен продолжить собираться.

## `main.cu`

Сделай kernel с формой:

```cpp
__global__ void vector_add(const int* a, const int* b, int* out, std::size_t size);
```

Host program делает ровно это:

1. Создает `1'000'000` элементов `a[i] = i`, `b[i] = 2 * i`.
2. Выделяет `d_a`, `d_b`, `d_out` через `cudaMalloc`.
3. Копирует `a` и `b` на GPU.
4. Запускает kernel с `threads_per_block = 256`.
5. Проверяет ошибки `cudaGetLastError()` и `cudaDeviceSynchronize()`.
6. Копирует `out` обратно.
7. Проверяет минимум три позиции: `0`, `size / 2`, `size - 1`.
8. Освобождает GPU memory.

Для каждой CUDA API call сделай маленький `CUDA_CHECK(...)` macro, который при ошибке печатает
`cudaGetErrorString(error)` и завершает программу с ненулевым exit code.

## `CMakeLists.txt`

Нужен отдельный минимальный CUDA project:

```text
cmake_minimum_required(...)
project(cuda_smoke_test LANGUAGES CXX CUDA)
add_executable(cuda_smoke_test main.cu)
set_target_properties(cuda_smoke_test PROPERTIES CUDA_STANDARD 17)
```

Не подключай основной `include/llp` и не переноси туда engine code.

## Команды На CUDA Машине

Сначала собери сведения об окружении:

```bash
nvidia-smi
nvcc --version
cmake --version
```

Потом:

```bash
cmake -S cuda_experiments/smoke_test -B cuda_experiments/smoke_test/build -DCMAKE_BUILD_TYPE=Release
cmake --build cuda_experiments/smoke_test/build
./cuda_experiments/smoke_test/build/cuda_smoke_test
```

## Что Должно Получиться

Программа должна вывести:

```text
GPU name
vector size
validation: passed
```

## Report

В `profiling_notes.md` запиши:

- GPU model и driver из `nvidia-smi`;
- CUDA toolkit version;
- `nvcc` version;
- OS;
- команды сборки;
- output с `validation: passed`.

В `README.md` положи те же команды, чтобы на новой CUDA машине experiment можно было повторить без истории чата.

## Не Нужно

- мерить latency;
- подключать CUDA к основному Mac build;
- переносить matching engine на GPU.
