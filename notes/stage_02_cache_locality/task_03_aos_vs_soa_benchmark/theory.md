# Теория 3. AoS vs SoA

## Что Такое AoS

AoS means Array of Structures.

```cpp
struct Quote {
    std::uint64_t timestamp;
    std::uint32_t price;
    std::uint32_t quantity;
    bool active;
};

std::vector<Quote> quotes;
```

В памяти это выглядит примерно так:

```text
[quote0][quote1][quote2][quote3]
```

У каждого record рядом лежат все поля. Это удобно, когда ты часто работаешь со
всем объектом целиком.

## Что Такое SoA

SoA means Structure of Arrays.

```cpp
struct QuotesSoA {
    std::vector<std::uint64_t> timestamps;
    std::vector<std::uint32_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<bool> active;
};
```

В памяти поля лежат отдельными arrays:

```text
[timestamp0][timestamp1][timestamp2]...
[price0][price1][price2]...
[quantity0][quantity1][quantity2]...
[active0][active1][active2]...
```

Это удобно, когда hot path читает только часть полей.

## Почему SoA Может Быть Быстрее

Если операция использует только `price` и `quantity`, AoS все равно тащит через
cache line остальные поля record: `timestamp`, flags, ids и padding.

SoA позволяет читать только нужные arrays. Это уменьшает memory traffic и может
помочь compiler/vectorizer работать эффективнее.

## Когда AoS Может Быть Лучше

AoS не плохой сам по себе. Он может быть лучше, если:

- операции почти всегда используют весь объект;
- важна простота API;
- данные часто передаются как единая сущность;
- record маленький и хорошо packed;
- access pattern объектный, а не columnar.

## HFT-Мышление

Market data и order book code часто имеют hot fields и cold fields.

Например hot path может читать:

- price;
- quantity;
- side;
- active flag.

А cold/debug/reporting fields могут быть:

- symbol string;
- exchange timestamp;
- sequence id;
- metadata.

Если все лежит в одной большой struct, hot path платит за cold data. AoS vs SoA
заставляет явно подумать: какие поля реально нужны в tight loop?
