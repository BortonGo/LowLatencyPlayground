# Assembly Inspection

## Inputs

- Source: `benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp`
- Main function inspected: `sum_prices`
- Local compiler: Apple clang 21.0.0, target `arm64-apple-darwin25.5.0`
- Notes: `notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/profiling_notes.md`

## Important Context

Current `main()` calls only `sum_prices`.
The other helper functions are commented out in `main()`, but their definitions are still present in the `.cpp` file.
Because they are normal external functions, `clang++ -S` can still emit assembly for them.

For this task, use `sum_prices` as the primary inspected function.

## Local Apple Silicon Commands

Run from the project root.

```bash
clang++ -std=c++23 -O0 -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O0.s

clang++ -std=c++23 -O2 -DNDEBUG -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O2.s

clang++ -std=c++23 -O3 -DNDEBUG -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O3.s

clang++ -std=c++23 -O3 -march=native -DNDEBUG -I include -S \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O3_march_native.s
```

Do not use `-masm=intel` on Apple Silicon. The output is ARM64/AArch64 assembly, not x86_64.

## Other Machine Commands

### clang++ on x86_64

Use these commands if the other machine has clang.

```bash
mkdir -p notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_clang

clang++ -std=c++23 -O0 -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_clang/benchmark_optimization_levels_O0.s

clang++ -std=c++23 -O2 -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_clang/benchmark_optimization_levels_O2.s

clang++ -std=c++23 -O3 -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_clang/benchmark_optimization_levels_O3.s

clang++ -std=c++23 -O3 -march=native -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_clang/benchmark_optimization_levels_O3_march_native.s
```

### g++ on x86_64

Use these commands if the other machine has GCC.

```bash
mkdir -p notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_gcc

g++ -std=c++23 -O0 -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_gcc/benchmark_optimization_levels_O0.s

g++ -std=c++23 -O2 -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_gcc/benchmark_optimization_levels_O2.s

g++ -std=c++23 -O3 -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_gcc/benchmark_optimization_levels_O3.s

g++ -std=c++23 -O3 -march=native -DNDEBUG -I include -S -masm=intel \
  benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp \
  -o notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_gcc/benchmark_optimization_levels_O3_march_native.s
```

If `g++ -std=c++23` fails on the other machine, use:

```bash
g++ -std=c++2b ...
```

## Helper Commands

Find inspected functions:

```bash
grep -n "sum_prices\|count_price_above\|count_valid_orders\|copy_matching_ids" \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/*.s
```

Compare `-O3` and `-O3 -march=native`:

```bash
diff -u \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O3.s \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O3_march_native.s
```

Search for ARM64/NEON vector instructions:

```bash
grep -n "ld4\|ld1\|add\\.2d\|addp\|cmhi\|cmtst\|cmeq" \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/benchmark_optimization_levels_O3.s
```

Search for x86_64 SIMD instructions:

```bash
grep -n "xmm\|ymm\|zmm\|vadd\|vpadd\|vpcmp\|vmov" \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/x86_64_*/*.s
```

Search for allocator/copy calls:

```bash
grep -n "__Znwm\|operator new\|memcpy\|memmove\|__ZdlPv\|operator delete" \
  notes/stage_09_language_level_optimization/topic_01_compiler_flags_and_codegen/task_04_assembly_inspection/**/*.s
```

If the shell does not expand `**`, run the same command against a concrete folder.

## Current Local Observations

- `benchmark_optimization_levels_O0.s`: 9846 lines.
- `benchmark_optimization_levels_O2.s`: 2268 lines.
- `benchmark_optimization_levels_O3.s`: 2252 lines.
- `benchmark_optimization_levels_O3_march_native.s`: 2252 lines.
- Local `-O3` and `-O3 -march=native` assembly are identical for the generated files.

## Function Observations

### `sum_prices`

`-O0`:

- Function starts around `benchmark_optimization_levels_O0.s:484`.
- Large stack frame and many spills.
- Calls `vector::begin`, `vector::end`, iterator compare, iterator dereference, iterator increment.
- Simple C++ loop is not visible as a compact hot loop.

`-O3`:

- Function starts around `benchmark_optimization_levels_O3.s:455`.
- Vector begin/end pointers are loaded directly.
- Main loop uses NEON vector instructions.
- Important lines:
  - `benchmark_optimization_levels_O3.s:516` to `benchmark_optimization_levels_O3.s:520`: vector loads with `ld4.2d`.
  - `benchmark_optimization_levels_O3.s:521` to `benchmark_optimization_levels_O3.s:528`: vector accumulation with `add.2d`.
  - `benchmark_optimization_levels_O3.s:533` to `benchmark_optimization_levels_O3.s:541`: horizontal reduction with `addp.2d`.

### Other Helpers

The other helpers are currently not called from `main`, but they are still emitted because their definitions remain in the source file.

- `count_price_above` starts around `benchmark_optimization_levels_O3.s:569`.
- `count_valid_orders` starts around `benchmark_optimization_levels_O3.s:706`.
- `copy_matching_ids` starts around `benchmark_optimization_levels_O3.s:858`.

`count_price_above` and `count_valid_orders` show auto-vectorization with NEON masks.
`copy_matching_ids` remains a branchy scalar loop because `push_back` writes a variable number of ids and must keep a possible realloc path.

## Conclusion

The important learning point is not to fully understand every ARM64 instruction.
The useful inspection is:

- `-O0` keeps iterator/helper calls and stack-heavy code.
- `-O3` removes most iterator abstraction and turns simple read/count loops into vectorized NEON loops.
- `copy_matching_ids` is harder to vectorize because output size depends on the branch.
- On the current local machine, `-march=native` did not change generated assembly for this benchmark.
