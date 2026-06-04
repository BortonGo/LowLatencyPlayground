#pragma once
#include <cstddef>
#include "llp/market_data_message.hpp"
#include <utility>

namespace llp {
    class BinaryFeedParser {
        std::uint32_t read_u32_le(const std::byte* p) const {
            std::uint32_t res;
            res = {
                std::to_integer<std::uint32_t>(p[0]) | (std::to_integer<std::uint32_t>(p[1]) << 8) |
                (std::to_integer<std::uint32_t>(p[2]) << 16) | (std::to_integer<std::uint32_t>(p[3]) << 24)
            };
            return res;
        }
        std::uint64_t read_u64_le(const std::byte* p) const {
            std::uint64_t res;
            res = {
                std::to_integer<std::uint64_t>(p[0]) | (std::to_integer<std::uint64_t>(p[1]) << 8) |
                (std::to_integer<std::uint64_t>(p[2]) << 16) | (std::to_integer<std::uint64_t>(p[3]) << 24) |
                (std::to_integer<std::uint64_t>(p[4]) << 32) | (std::to_integer<std::uint64_t>(p[5]) << 40) |
                (std::to_integer<std::uint64_t>(p[6]) << 48) | (std::to_integer<std::uint64_t>(p[7]) << 56)
            };
            return res;
        }
    public:
        static constexpr std::size_t message_size = 18;

        bool parse(const std::byte* byte, std::size_t size, MarketDataMessage& out) const noexcept {
            if (size < message_size) return false;
            const std::uint8_t type = std::to_integer<std::uint8_t>(byte[0]);
            if ((type != static_cast<std::uint8_t>(MessageType::Add)) &&
                (type != static_cast<std::uint8_t>(MessageType::Cancel)) &&
                (type != static_cast<std::uint8_t>(MessageType::Trade))) return false;
            const std::uint32_t symbol_id = read_u32_le(&byte[1]);
            const std::uint64_t price = read_u64_le(&byte[5]);
            const std::uint32_t quantity = read_u32_le(&byte[13]);
            const std::uint8_t side = std::to_integer<std::uint8_t>(byte[17]);
            if ((side != static_cast<std::uint8_t>(Side::Ask)) &&
                (side != static_cast<std::uint8_t>(Side::Bid))) return false;
            out.type = static_cast<MessageType>(type);
            out.symbol_id = symbol_id;
            out.price = price;
            out.quantity = quantity;
            out.side = static_cast<Side>(side);
            return true;
        }

        static void write_u32_le(std::byte* p, std::uint32_t value) {
            p[0] = static_cast<std::byte>(value & 0xFF);
            p[1] = static_cast<std::byte>((value >> 8) & 0xFF);
            p[2] = static_cast<std::byte>((value >> 16) & 0xFF);
            p[3] = static_cast<std::byte>((value >> 24) & 0xFF);
        }

        static void write_u64_le(std::byte* p, std::uint64_t value) {
            p[0] = static_cast<std::byte>(value & 0xFF);
            p[1] = static_cast<std::byte>((value >> 8) & 0xFF);
            p[2] = static_cast<std::byte>((value >> 16) & 0xFF);
            p[3] = static_cast<std::byte>((value >> 24) & 0xFF);
            p[4] = static_cast<std::byte>((value >> 32) & 0xFF);
            p[5] = static_cast<std::byte>((value >> 40) & 0xFF);
            p[6] = static_cast<std::byte>((value >> 48) & 0xFF);
            p[7] = static_cast<std::byte>((value >> 56) & 0xFF);
        }
    };
}