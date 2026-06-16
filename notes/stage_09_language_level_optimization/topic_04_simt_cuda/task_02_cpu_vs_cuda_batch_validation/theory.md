# Теория. CUDA Kernel Throughput

GPU хорош для большого количества независимых элементов.

Validation batch подходит лучше, чем live matching:

```text
one thread validates one order
```

Но kernel-only time не показывает полную цену использования GPU.

Это только первый шаг.
