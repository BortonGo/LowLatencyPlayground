# Задача 2. CPU vs CUDA Batch Validation

## Цель

Сравнить CPU scalar validation с CUDA kernel-only validation для большого независимого batch.
В этой задаче GPU data уже лежат на device: H2D/D2H копирования будут отдельной task 3.

## Структура

Создай:

```text
cuda_experiments/order_batch_validation/
  CMakeLists.txt
  main.cu
  README.md
```

## Формат Данных

Не копируй `llp::Order` напрямую. На GPU используй SoA arrays:

```text
ids[]        uint64_t
prices[]     uint64_t
quantities[] uint32_t
sides[]      uint8_t
```

Подготовь один deterministic host batch для sizes:

```text
1K, 10K, 100K, 1M, 10M
```

Сделай около 90% valid orders. Invalid orders должны покрывать все причины ошибки.

## Validation Contract

Order valid, если:

```text
id != 0
quantity != 0
min_price <= price <= max_price
side is 1 or 2
```

CPU function:

```cpp
void validate_cpu(const HostOrderSoA& orders, std::vector<std::uint8_t>& invalid_flags);
```

CUDA kernel:

```cpp
__global__ void validate_kernel(
    const std::uint64_t* ids,
    const std::uint64_t* prices,
    const std::uint32_t* quantities,
    const std::uint8_t* sides,
    std::uint8_t* invalid_flags,
    std::size_t size,
    std::uint64_t min_price,
    std::uint64_t max_price);
```

Один CUDA thread проверяет один order и пишет `0` или `1` в `invalid_flags[i]`.
Не используй `atomicAdd` для общего invalid count: contention исказит первый experiment.

После kernel скопируй flags один раз и сравни их с CPU flags. Сравнение нужно для correctness,
но его время не входит в kernel-only measurement.

## Измерение

1. CPU scalar: `std::chrono::steady_clock`, только validation loop.
2. CUDA kernel: `cudaEventRecord` до и после kernel, затем `cudaEventSynchronize(stop)`.
3. Перед измерением сделай 10 warmup kernel launches.
4. Для каждого batch size сделай 10 измерений и внеси median.

H2D и D2H не включай в цифру этой задачи.

## Report

Таблица:

```text
batch size | CPU scalar us | CUDA kernel us | CPU invalid count | GPU invalid count | flags equal
```

Отдельно запиши, на каком batch CUDA kernel-only time стал меньше CPU time.
Это еще не означает, что CUDA полезна end-to-end.

## Не Нужно

- включать copy time в kernel-only таблицу;
- делать GPU reduction invalid count;
- переносить matching engine на GPU.
