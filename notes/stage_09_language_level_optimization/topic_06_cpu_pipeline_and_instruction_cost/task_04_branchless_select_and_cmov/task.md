# Задача 4. Branchless Select And CMOV/CSEL

## Цель

Проверить, когда branchless select лучше обычного `if`, а когда обычный branch
не хуже. Это продолжение branch prediction темы, но теперь смотрим именно на
generated code: `cmov` на x86 или `csel` на ARM.

## Файл

Создай benchmark:

```text
benchmarks/stage_09_language_level_optimization/benchmark_branchless_select.cpp
```

Добавь target:

```text
benchmark_branchless_select
```

## Данные

Сгенерируй два массива:

```cpp
std::vector<std::uint64_t> prices;
std::vector<std::uint8_t> flags;
```

Размер:

```text
16M
```

Distributions для `flags`:

```text
99% true
90% true
50% true random
```

## Функции

Branchy:

```cpp
std::uint64_t sum_branchy(
    const std::vector<std::uint64_t>& prices,
    const std::vector<std::uint8_t>& flags);
```

Ternary select:

```cpp
std::uint64_t sum_ternary_select(
    const std::vector<std::uint64_t>& prices,
    const std::vector<std::uint8_t>& flags);
```

Arithmetic mask:

```cpp
std::uint64_t sum_arithmetic_mask(
    const std::vector<std::uint64_t>& prices,
    const std::vector<std::uint8_t>& flags);
```

## Logic

Branchy:

```cpp
if (flags[i]) {
    sum += prices[i];
}
```

Ternary:

```cpp
sum += flags[i] ? prices[i] : 0;
```

Arithmetic mask:

```cpp
sum += prices[i] * static_cast<std::uint64_t>(flags[i] != 0);
```

Все variants должны давать одинаковый checksum.

## Assembly

Сохрани assembly для `-O2` и проверь hot loops:

```bash
clang++ -std=c++23 -O2 -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_branchless_select.cpp \
  -o notes/stage_09_language_level_optimization/topic_06_cpu_pipeline_and_instruction_cost/task_04_branchless_select_and_cmov/benchmark_branchless_select_O2.s
```

На Apple Silicon ищи `csel`, `cinc`, vector instructions или branch instructions.
На x86_64 ищи `cmov`, vector instructions или branch instructions.

## Report

Таблица:

```text
distribution | branchy | ternary | arithmetic mask | assembly note
```

Ответь:

- где branchy победил;
- где branchless variant лучше;
- сделал ли compiler branchless код сам;
- почему 99% predictable branch может быть дешевым;
- почему 50% random branch может быть дорогим.

## Не Нужно

- использовать `[[likely]]` в этой задаче;
- использовать `__builtin_expect`;
- делать вывод только по C++ синтаксису без assembly.
