# Теория. Profiling Matching Engine

После benchmark важно уметь ответить:

```text
где именно тратится время?
```

Без profiling мы можем только предполагать. С profiling можно увидеть hotspots:

- container lookup;
- allocations;
- hashing;
- tree operations;
- matching loop;
- benchmark overhead.

## macOS Tools

На macOS можно использовать:

```text
sample
Instruments
```

`sample` проще для первого шага:

```text
sample <pid> 5
```

Или запустить программу и быстро посмотреть sample в Activity Monitor/Instruments.

## Что Искать

Для нашего проекта интересно:

- `std::map`;
- `std::unordered_map`;
- `std::deque`;
- `operator new`;
- `MatchingEngine::add`;
- `OrderBookSide::cancel`;
- benchmark printing или stats overhead.

