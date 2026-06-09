# Теория. Allocation Audit In Hot Path

Latency spikes часто появляются не из-за арифметики, а из-за памяти:

```text
heap allocation
new page
cache miss
TLB miss
container growth
```

В нашем matching engine уже есть места, где стандартные контейнеры могут выделять память:

- `std::map` при создании нового price level;
- `std::deque` при росте level;
- `std::unordered_map` при insert/rehash;
- `std::vector<Trade>` если забыли `reserve`.

## Почему Это Важно

Если operation обычно занимает `40ns`, но иногда делает heap allocation, tail latency может стать `microseconds`.

Throughput benchmark может скрыть это, а latency histogram покажет хвост.

## Audit

Allocation audit - это проверка:

```text
сколько heap allocations произошло внутри измеряемого участка?
```

Для учебного проекта можно сделать простой счетчик через глобальные `operator new/delete` в отдельном benchmark-файле.

Это не production tracing, но хороший способ увидеть, где hot path реально трогает heap.

