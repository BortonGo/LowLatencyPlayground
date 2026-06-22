# Задача 2. Auto-Vectorization Report

## Цель

Понять по сообщениям compiler, какие конкретные loops из task 1 он превратил в SIMD,
а какие оставил scalar.

## Подготовка

Используй уже готовый benchmark из stage 2:

```text
benchmarks/stage_02_cache_locality/aos_vs_soa_benchmark.cpp
```

Ты уже измерил его runtime. В этой задаче не надо заново писать AoS, SoA,
генератор данных или новую таблицу производительности.

Смотри только два существующих hot loops:

```text
aos_traversal() -> loop over vector<RecordAoS>
soa_traversal() -> indexed loop over RecordsSoA arrays
```

Задача теперь про вопрос: почему compiler смог или не смог vectorize каждый из
этих loops.

## Сборка С Clang Remarks

На Mac собери отдельный build directory:

```bash
cmake -S . -B cmake-build-vectorization \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize"

cmake --build cmake-build-vectorization --target aos_vs_soa_benchmark
```

Compiler напечатает сообщения вида:

```text
remark: vectorized loop
remark: loop not vectorized
remark: ... reason ...
```

Сохрани terminal output в `profiling_notes.md` короткими фрагментами: не нужен весь лог.

## Что Проверить По Каждому Workload

Заполни таблицу:

```text
aos_traversal / soa_traversal | vectorized? | compiler reason | matches stage 2 result?
```

Отдельно ответь:

1. Vectorized ли SoA traversal?
2. Vectorized ли AoS traversal?
3. Если оба loops missed, что именно назвал compiler: branch `active`, reduction,
   aliasing или что-то другое?
4. Совпадает ли это с твоим уже полученным AoS vs SoA результатом?

## Assembly Cross-check

Для одного vectorized или missed loop сгенерируй `-O3` assembly.

На Apple Silicon ищи `ld1`, `ld4`, `add.2d`, `cmhi`, `cmeq`.
На x86_64 ищи `xmm`, `ymm`, `zmm`, `vpadd`, `vpcmp`.

## Не Нужно

- переписывать готовый stage 2 benchmark до baseline report;
- использовать intrinsics;
- повторять AoS vs SoA benchmark как новую задачу.
