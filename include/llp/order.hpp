#pragma once
#include <cstdint>

namespace llp {
    enum class OrderSide : std::uint8_t {
        Buy = 1,
        Sell = 2
    };

    struct Order {
        std::uint64_t id = 0;
        std::uint64_t sequence = 0;
        std::uint64_t price = 0;
        std::uint32_t quantity = 0;
        OrderSide side = OrderSide::Buy;
    };
}