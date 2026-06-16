# Теория. Batch Threshold

GPU обычно выигрывает throughput на больших batch.

Но live low-latency path часто работает с маленькими порциями данных.

Поэтому важен threshold:

```text
minimum batch size where GPU full path beats CPU
```

Этот threshold решает, где CUDA реально применима.
