# Review Checklist. Stage 5 Task 2 SpinLock

## Correctness

- `lock()` реально блокирует вход второго thread.
- `unlock()` освобождает lock.
- Multi-thread counter test дает точное значение.
- Нет забытых unlock в tests.

## Atomics

- Используется `std::atomic_flag`.
- `lock()` использует `test_and_set`.
- `lock()` использует `memory_order_acquire`.
- `unlock()` использует `memory_order_release`.
- Нет лишнего `seq_cst` без причины.

## Concurrency

- Shared `counter` защищен lock.
- Threads joined перед проверкой результата.
- Нет shared non-atomic переменных вне critical section.

## Style

- Header лежит в `include/llp`.
- Namespace `llp`.
- Copy operations удалены.
- Includes явные.

