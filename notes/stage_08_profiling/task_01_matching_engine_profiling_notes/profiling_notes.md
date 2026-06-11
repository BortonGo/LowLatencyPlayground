# Profiling Notes

## Setup

Сборка: RelWithDebInfo
Инструмент: macOS sample
Benchmark: benchmark_matching_engine
Команда: ./cmake-build-profile/benchmark_matching_engine & sample $! 5 -file profile_matching_engine.txt

## Hotspots

- Часть samples попала в `_dyld_start`, то есть в startup процесса. Это не hot path matching engine.
- В основной runtime-части больше всего samples видно в `run_match_crossing_only`.
- Внутри `run_match_crossing_only` заметен `llp::MatchingEngine::add`.
- Внутри `MatchingEngine::add` видны `std::__hash_table::__erase_unique`, `_free`, `_xzm_free`.
- В `OrderBookSide::add` видны `operator new`, `malloc` и `std::__hash_table::__do_rehash`.
- В `OrderBookSide::cancel` видны `unordered_map::erase` и `std::deque::erase`.

## Наблюдения

- После удаления старого `old_cancel` профиль больше не упирается в старый медленный путь.
- Основная нагрузка сместилась в реальные операции matching/add/cancel.
- Текущая реализация не является no-allocation в hot path: `unordered_map` выделяет память при insert, может делать rehash, а erase приводит к free.
- `std::deque::erase` тоже виден в профиле, значит удаление ордера из price level имеет заметную цену.
- `sample` частично захватил startup процесса, поэтому следующий замер лучше делать на более длинном benchmark-е или после прогрева.

## Следующая цель оптимизации

- Убрать или уменьшить allocator work в `OrderBookSide`.
- Добавить `reserve()` для `unordered_map`, чтобы уменьшить rehash.
- Сравнить текущую структуру с flat/preallocated вариантом.
- Отдельно профилировать только matching loop без генерации данных и без startup.
