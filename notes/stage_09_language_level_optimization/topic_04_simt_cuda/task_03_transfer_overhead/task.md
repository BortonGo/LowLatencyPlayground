# Задача 3. Transfer Overhead

## Цель

Измерить полную цену GPU validation: не только kernel, но и передачу данных до GPU и обратно.
Используй готовый experiment из task 2, не создавай новый алгоритм.

## Что Измерить

Для каждого batch size `1K`, `10K`, `100K`, `1M`, `10M` запиши четыре числа:

```text
H2D: copy ids/prices/quantities/sides from host to device
kernel: validate_kernel only
D2H: copy invalid_flags from device to host
full path: H2D + kernel + D2H
```

H2D включает четыре `cudaMemcpy`, D2H - только flags output.

## Как Измерять

1. Для H2D и D2H используй CUDA events на default stream.
2. Для kernel оставь CUDA events из task 2.
3. Для full path поставь event до первой H2D copy и после D2H copy.
4. Между измерениями восстанови device buffers в одинаковое состояние.
5. Сделай 10 warmup iterations и 10 measured iterations.
6. В report используй median, а не minimum.

Не используй `std::chrono` вокруг asynchronous CUDA calls без `cudaEventSynchronize`: так получится
ложно маленькое время, потому что host только поставил работу в очередь.

## CPU Comparison

Добавь к той же строке CPU scalar median из task 2. Тогда таблица сразу отвечает,
проигрывает ли GPU full path CPU.

## Report

```text
batch | CPU scalar | H2D | kernel | D2H | CUDA full path | dominant stage | flags equal
```

Для каждой строки назови dominant stage: самый большой из `H2D`, `kernel`, `D2H`.

Сделай два вывода:

1. На каком size kernel становится существенной частью total time.
2. На каком size, если вообще, CUDA full path быстрее CPU.

## Не Нужно

- писать "GPU быстрее", основываясь только на kernel;
- использовать pinned memory или streams: это отдельная оптимизация после честного baseline;
- менять validation logic из task 2.
