# Теория. Transfer Cost

GPU может быстро выполнять kernel, но данные должны попасть на GPU.

Полная цена:

```text
host -> device
kernel launch + execution
device -> host
```

На маленьких batch transfer и launch overhead часто убивают весь выигрыш.
