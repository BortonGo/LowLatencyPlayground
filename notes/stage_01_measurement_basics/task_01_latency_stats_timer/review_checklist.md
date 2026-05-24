# Review Checklist. Этап 1 Задача 1

## Корректность

- Поведение empty `LatencyStats` явно задано и покрыто тестами.
- `count()` совпадает с количеством добавленных samples.
- `min()`, `max()` и `mean()` корректны для unsorted samples.
- `median()` детерминирован для odd и even sample counts.
- `percentile()` обрабатывает `0`, `50`, `95`, `99` и `100`.
- Некорректные percentile values отклоняются.

## Измерения

- Warm-up calls выполняются, но не записываются.
- Measured phase записывает ровно один sample на iteration.
- Timing использует `std::chrono::steady_clock`.
- Внутри measured loop нет printing или logging.

## Performance Awareness

- Hot benchmark loop избегает лишних allocation.
- `LatencyStats` не сортирует internal storage на каждом `add_sample`.
- Дорогое formatting находится вне measurement.
- API не заставляет callers аллоцировать strings в hot paths.

## API Design

- Public names понятные и небольшие.
- `const` methods не мутируют observable state неожиданным образом.
- Exceptions используются последовательно для invalid states.
- Units заданы явно: samples это `std::chrono::nanoseconds`.

## Вопросы Для Обсуждения

- Почему average latency может скрывать проблемы?
- Какую работу warm-up может случайно включить?
- Какой overhead добавляет per-iteration timing?
- Когда benchmark должен использовать batching вместо per-call measurement?
