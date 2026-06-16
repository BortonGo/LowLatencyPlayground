# Задача 4. Batch Size Threshold Decision

## Цель

Определить, с какого batch size CUDA начинает окупаться.

## Что Сделать

Используй результаты task 2 и task 3.

Создай decision report:

```text
notes/stage_09_language_level_optimization/topic_04_simt_cuda/task_04_batch_size_threshold/profiling_notes.md
```

Ответь:

- где CPU быстрее;
- где CUDA kernel быстрее;
- где CUDA full path быстрее;
- какой batch threshold;
- где CUDA полезна в low-latency проекте.

## Не Нужно

- переносить live matching на GPU.
