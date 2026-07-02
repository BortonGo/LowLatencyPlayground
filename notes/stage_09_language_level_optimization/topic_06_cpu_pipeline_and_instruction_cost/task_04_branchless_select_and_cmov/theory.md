# Теория. Branchless Select

Branchy код:

```cpp
if (cond) {
    sum += value;
}
```

может быть быстрым, если branch хорошо предсказывается.

Branchless код:

```cpp
sum += cond ? value : 0;
```

может избежать misprediction, но иногда делает больше работы.

Compiler может превратить ternary в conditional select:

```text
ARM: csel
x86: cmov
```

или даже vectorize loop. Поэтому важно смотреть assembly, а не судить только по
тому, как выглядит C++.

Branchless не значит автоматически быстрее. Он полезен, когда misprediction
дороже дополнительной работы.
