# Profiling Notes

## Setup

Сборка: RelWithDebInfo
Инструмент: macOS sample, CLion profiler
Benchmark: benchmark_price_level_array_book_side
Команда: ./cmake-build-profile/benchmark_price_level_array_book_side & sample $! 5 -file profiling_price_level_array_book.txt

## Hotspots

- Часть samples попала в `_dyld_start`, то есть в startup процесса. Это не hot path структуры данных.
- В этом benchmark основная runtime-нагрузка видна в сценариях `pop_best`.
- Для `OrderBookSide` заметна стоимость старого `std::map`-based хранения price levels.
- Для `PriceLevelArrayBookSide` стоимость поиска best level стала меньше после кеширования `best_level_index_`.
- В `pop_best_price_level_array` заметная часть samples остается в `unordered_map`: `std::__hash_table::__erase_unique`.
- Также остаются samples вокруг `deque`, потому что каждый price level все еще хранит orders в `std::deque<Order>`.

## Наблюдения

- Переход с `map` на массив price levels дает выигрыш на `add` и на части `pop_best` сценариев.
- `best_order()` теперь не должен сканировать весь массив уровней: текущий best level хранится отдельно.
- По этому снимку нельзя утверждать, что вся структура уже быстрее во всех сценариях: `BUY pop_best` все еще требует отдельной проверки.
- После удаления сканирования следующая заметная проблема сместилась в `order_level_index`, то есть в `unordered_map` для поиска order id.
- Текущий benchmark профилирует весь процесс, поэтому startup, генерация данных и разрушение контейнеров тоже могут попадать в samples.

## Следующая цель оптимизации

- Сначала перепроверить профиль после последней версии `PriceLevelArrayBookSide` с кешированным best level.
- Если `unordered_map::erase` и allocation/free остаются в hot path, смотреть в сторону более плотного индекса order id.
- Отдельно проверить, дает ли `deque` заметную цену на `pop_best/cancel`, и только после этого думать о замене контейнера внутри price level.
- Не встраивать эту структуру в `MatchingEngine`, пока не понятно, что именно ограничивает `pop_best` и `cancel`.
