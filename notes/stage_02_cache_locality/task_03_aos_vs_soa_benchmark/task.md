# Задача 3. AoS vs SoA Benchmark

## Цель

Сравнить два layout-подхода:

- AoS: `std::vector<Record>`;
- SoA: struct, внутри которой отдельные `std::vector` для каждого поля.

Нужно измерить hot-path операцию, которая читает только часть полей:

```text
если record active, посчитать price * quantity
```

Главная цель - увидеть, как SoA может уменьшить cache footprint, когда операция
не использует весь объект.

## Нужные Файлы

Рекомендуемый файл:

```text
benchmarks/stage_02_cache_locality/aos_vs_soa_benchmark.cpp
```

## CMake

Добавь отдельный executable:

```cmake
add_executable(aos_vs_soa_benchmark
        benchmarks/stage_02_cache_locality/aos_vs_soa_benchmark.cpp
)

target_include_directories(aos_vs_soa_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

Запуск:

```bash
cmake -S . -B cmake-build-release -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build-release --target aos_vs_soa_benchmark
./cmake-build-release/aos_vs_soa_benchmark
```

## Структуры

Используй примерно:

```cpp
struct RecordAoS {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    bool active;
    bool is_bid;
};

struct RecordsSoA {
    std::vector<std::uint64_t> timestamps;
    std::vector<std::uint64_t> order_ids;
    std::vector<std::uint32_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<std::uint8_t> active;
    std::vector<std::uint8_t> is_bid;
};
```

Не используй `std::vector<bool>` в этой задаче. У него special bit-packed
representation, и он добавит лишнюю тему.

## Требования

- Используй `llp::BenchmarkTimer` и `llp::LatencyStats`.
- Создай AoS и SoA datasets одинакового размера.
- Заполни их одинаковыми значениями.
- Измерь traversal:
  - если `active`, добавить `price * quantity` в checksum.
- В measured loop не должно быть allocation или printing.
- После benchmark выведи:
  - `sizeof(RecordAoS)`;
  - approximate AoS memory;
  - approximate SoA hot memory for fields used in loop;
  - stats для AoS;
  - stats для SoA;
  - checksums.
- Запускай в Release build.

## Рекомендуемая Конфигурация

```cpp
constexpr std::size_t record_count = 1'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 20,
    .measured_iterations = 200,
};
```

## Approximate Memory

Для AoS:

```text
sizeof(RecordAoS) * record_count
```

Для SoA hot memory в этой операции:

```text
(sizeof(std::uint32_t) + sizeof(std::uint32_t) + sizeof(std::uint8_t)) * record_count
```

Почему только hot memory: loop читает `prices`, `quantities`, `active`. Он не
читает `timestamps`, `order_ids`, `is_bid`.

## Форма Traversal

AoS:

```cpp
for (const auto& record : records) {
    if (record.active) {
        sum += static_cast<std::uint64_t>(record.price) * record.quantity;
    }
}
```

SoA:

```cpp
for (std::size_t i = 0; i < records.prices.size(); ++i) {
    if (records.active[i]) {
        sum += static_cast<std::uint64_t>(records.prices[i]) *
               records.quantities[i];
    }
}
```

## Output Format

Пример:

```text
RecordAoS sizeof: ...
AoS memory       : ... bytes
SoA hot memory   : ... bytes

aos
count   : ...
median  : ...
p95     : ...
p99     : ...
max     : ...
checksum: ...

soa
...
```

## Критерии Готовности

- AoS и SoA datasets содержат одинаковые logical records.
- Checksums совпадают.
- Измеряется только traversal, не создание dataset.
- В measured loop нет printing/allocation.
- Есть сравнение memory footprint.
- Ты можешь объяснить, почему SoA быстрее или почему на твоей машине разница
  маленькая.

## Подсказка 1

Для SoA сделай helper:

```cpp
void reserve(std::size_t n);
void push_back(...);
std::size_t size() const;
```

Но если хочется проще, можно заполнять vectors напрямую.

## Подсказка 2

Не смешивай эту задачу с branch prediction. Пусть `active` будет регулярным,
например:

```cpp
active = (i % 2 == 0);
```

Branch prediction отдельно разберем следующей задачей.

## Подсказка 3

Если SoA не быстрее, проверь:

- используешь ли Release build;
- совпадают ли checksums;
- не читаешь ли в SoA loop cold fields;
- нет ли копирования records в AoS loop.

## Что Прислать На Review

Пришли:

- `benchmarks/stage_02_cache_locality/aos_vs_soa_benchmark.cpp`;
- изменения в `CMakeLists.txt`;
- пример вывода Release build;
- короткое объяснение результата.
