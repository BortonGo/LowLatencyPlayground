# Теория. Optimization Levels

Optimization level меняет агрессивность компилятора.

`Debug` удобен для отладки, но часто очень медленный.

`RelWithDebInfo` дает оптимизации и debug symbols.

`Release` обычно включает оптимизации без debug-focused поведения.

`-O3` может быть быстрее `-O2`, но не обязан. Иногда `-O3` увеличивает code size и ухудшает instruction-cache behavior.

Главная мысль:

```text
optimization flags нужно измерять, а не выбирать по названию
```
