# Теория. Division And Strength Reduction

Integer division обычно дороже сложения, AND, shift и multiply.

Если divisor известен compiler-у, он часто может заменить division:

```cpp
x / 8
```

на:

```cpp
x >> 3
```

Для `/ 10` compiler тоже может использовать strength reduction: multiply by
magic constant + shift. Это не выглядит как обычная division instruction.

Если divisor приходит runtime value, compiler обычно не может сделать такую же
простую замену.

Поэтому важно различать:

- runtime division;
- division by compile-time constant;
- power-of-two division;
- manual shift.
