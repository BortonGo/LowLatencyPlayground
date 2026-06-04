#include "llp/binary_feed_parser.hpp"
#include "gtest/gtest.h"
#include <array>
#include <cstddef>

TEST(BinaryFeedParser, AddReadMsg) {
    std::uint8_t type = 1;
    std::uint8_t side = 2;
    std::uint32_t id = 123;
    std::uint32_t quant = 555;
    std::uint64_t price = 41045;

    std::array<std::byte, 18> buffer {};
    buffer[0] = static_cast<std::byte>(type);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 1, id);
    llp::BinaryFeedParser::write_u64_le(buffer.data() + 5, price);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 13, quant);
    buffer[17] = static_cast<std::byte>(side);

    llp::MarketDataMessage out{};
    llp::BinaryFeedParser parser;

    EXPECT_EQ(parser.parse(&buffer[0], 17, out), false);
    EXPECT_EQ(parser.parse(&buffer[0], 18, out), true);
    EXPECT_EQ(out.type, llp::MessageType::Add);
    EXPECT_EQ(out.symbol_id, 123);
    EXPECT_EQ(out.price, 41045);
    EXPECT_EQ(out.quantity, 555);
    EXPECT_EQ(out.side, llp::Side::Ask);
}

TEST(BinaryFeedParser, BadType) {
    std::uint8_t type = 4;
    std::uint8_t side = 2;
    std::uint32_t id = 123;
    std::uint32_t quant = 555;
    std::uint64_t price = 41045;

    std::array<std::byte, 18> buffer {};
    buffer[0] = static_cast<std::byte>(type);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 1, id);
    llp::BinaryFeedParser::write_u64_le(buffer.data() + 5, price);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 13, quant);
    buffer[17] = static_cast<std::byte>(side);

    llp::MarketDataMessage out{};
    llp::BinaryFeedParser parser;
    EXPECT_EQ(parser.parse(&buffer[0], 18, out), false);
}

TEST(BinaryFeedParser, BadSide) {
    std::uint8_t type = 1;
    std::uint8_t side = 3;
    std::uint32_t id = 123;
    std::uint32_t quant = 555;
    std::uint64_t price = 41045;

    std::array<std::byte, 18> buffer {};
    buffer[0] = static_cast<std::byte>(type);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 1, id);
    llp::BinaryFeedParser::write_u64_le(buffer.data() + 5, price);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 13, quant);
    buffer[17] = static_cast<std::byte>(side);

    llp::MarketDataMessage out{};
    out.price = 999;
    llp::BinaryFeedParser parser;
    EXPECT_EQ(parser.parse(&buffer[0], 18, out), false);
    EXPECT_EQ(out.price, 999);
}
