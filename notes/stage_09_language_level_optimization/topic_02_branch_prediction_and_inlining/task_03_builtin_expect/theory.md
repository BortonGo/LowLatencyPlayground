# Теория. builtin_expect

`__builtin_expect` это compiler-specific способ сообщить ожидаемый результат condition.

Пример:

```cpp
if (__builtin_expect(error, false)) {
}
```

Он старше, чем `[[likely]]`, и часто встречается в low-level C/C++.

Минус: это не стандартный C++.

Поэтому его надо изолировать и проверять по compiler.
