#pragma once
#include <cstdint>

namespace llp {
    enum class MessageType : std::uint8_t {
        Add = 1,
        Cancel = 2,
        Trade = 3
    };

    enum class Side : std::uint8_t {
        Bid = 1,
        Ask = 2
    };

    // Special bad structure
    struct MarketDataMessage {
        MessageType type;
        std::uint32_t symbol_id;
        std::uint64_t price;
        std::uint32_t quantity;
        Side side;
    };
}