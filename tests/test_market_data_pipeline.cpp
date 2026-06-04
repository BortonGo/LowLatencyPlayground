#include "llp/market_data_pipeline.hpp"
#include "gtest/gtest.h"

#include <array>
#include <cstddef>
#include <cstdint>

namespace {

constexpr std::size_t kMessageSize = llp::BinaryFeedParser::message_size;
using MessageBuffer = std::array<std::byte, kMessageSize>;

MessageBuffer make_message(
    llp::MessageType type = llp::MessageType::Add,
    llp::Side side = llp::Side::Bid,
    std::uint32_t symbol_id = 123,
    std::uint64_t price = 41045,
    std::uint32_t quantity = 555) {
    MessageBuffer buffer{};
    buffer[0] = static_cast<std::byte>(type);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 1, symbol_id);
    llp::BinaryFeedParser::write_u64_le(buffer.data() + 5, price);
    llp::BinaryFeedParser::write_u32_le(buffer.data() + 13, quantity);
    buffer[17] = static_cast<std::byte>(side);
    return buffer;
}

MessageBuffer make_message_with_raw_type(std::uint8_t type) {
    auto buffer = make_message();
    buffer[0] = static_cast<std::byte>(type);
    return buffer;
}

void expect_message_eq(
    const llp::MarketDataMessage& msg,
    llp::MessageType type,
    llp::Side side,
    std::uint32_t symbol_id,
    std::uint64_t price,
    std::uint32_t quantity) {
    EXPECT_EQ(msg.type, type);
    EXPECT_EQ(msg.side, side);
    EXPECT_EQ(msg.symbol_id, symbol_id);
    EXPECT_EQ(msg.price, price);
    EXPECT_EQ(msg.quantity, quantity);
}

}  // namespace

TEST(MarketDataPipeline, ValidMessageReturnTrueAndUpdatesStats) {
    const auto buffer = make_message(
        llp::MessageType::Add,
        llp::Side::Ask,
        123,
        41045,
        555);

    llp::MarketDataPipeline pipeline(4);

    EXPECT_TRUE(pipeline.submit(buffer.data(), buffer.size()));
    EXPECT_EQ(pipeline.stats().parsed, 1);
    EXPECT_EQ(pipeline.stats().pushed, 1);
    EXPECT_EQ(pipeline.stats().parse_errors, 0);
    EXPECT_EQ(pipeline.stats().failed_pushes, 0);
    EXPECT_EQ(pipeline.stats().consumed, 0);
}

TEST(MarketDataPipeline, InvalidMessageIncrementsParseErrors) {
    const auto buffer = make_message_with_raw_type(99);
    llp::MarketDataPipeline pipeline(4);

    EXPECT_FALSE(pipeline.submit(buffer.data(), buffer.size()));
    EXPECT_EQ(pipeline.stats().parse_errors, 1);
    EXPECT_EQ(pipeline.stats().parsed, 0);
    EXPECT_EQ(pipeline.stats().pushed, 0);
    EXPECT_EQ(pipeline.stats().failed_pushes, 0);
}

TEST(MarketDataPipeline, TooSmallMessageIncrementsParseErrors) {
    const auto buffer = make_message();
    llp::MarketDataPipeline pipeline(4);

    EXPECT_FALSE(pipeline.submit(buffer.data(), kMessageSize - 1));
    EXPECT_EQ(pipeline.stats().parse_errors, 1);
    EXPECT_EQ(pipeline.stats().parsed, 0);
    EXPECT_EQ(pipeline.stats().pushed, 0);
}

TEST(MarketDataPipeline, PollReturnsSubmittedMessage) {
    const auto buffer = make_message(
        llp::MessageType::Trade,
        llp::Side::Bid,
        777,
        100500,
        42);
    llp::MarketDataPipeline pipeline(4);

    ASSERT_TRUE(pipeline.submit(buffer.data(), buffer.size()));

    llp::MarketDataMessage msg{};
    ASSERT_TRUE(pipeline.poll(msg));
    expect_message_eq(
        msg,
        llp::MessageType::Trade,
        llp::Side::Bid,
        777,
        100500,
        42);
    EXPECT_EQ(pipeline.stats().consumed, 1);
}

TEST(MarketDataPipeline, PollPreservesFifoOrder) {
    const auto first = make_message(
        llp::MessageType::Add,
        llp::Side::Bid,
        1,
        100,
        10);
    const auto second = make_message(
        llp::MessageType::Cancel,
        llp::Side::Ask,
        2,
        200,
        20);
    const auto third = make_message(
        llp::MessageType::Trade,
        llp::Side::Bid,
        3,
        300,
        30);
    llp::MarketDataPipeline pipeline(4);

    ASSERT_TRUE(pipeline.submit(first.data(), first.size()));
    ASSERT_TRUE(pipeline.submit(second.data(), second.size()));
    ASSERT_TRUE(pipeline.submit(third.data(), third.size()));

    llp::MarketDataMessage msg{};
    ASSERT_TRUE(pipeline.poll(msg));
    EXPECT_EQ(msg.symbol_id, 1);
    ASSERT_TRUE(pipeline.poll(msg));
    EXPECT_EQ(msg.symbol_id, 2);
    ASSERT_TRUE(pipeline.poll(msg));
    EXPECT_EQ(msg.symbol_id, 3);
    EXPECT_FALSE(pipeline.poll(msg));
    EXPECT_EQ(pipeline.stats().consumed, 3);
}

TEST(MarketDataPipeline, FullQueueIncrementsFailedPushes) {
    const auto first = make_message(
        llp::MessageType::Add,
        llp::Side::Bid,
        1,
        100,
        10);
    const auto second = make_message(
        llp::MessageType::Add,
        llp::Side::Bid,
        2,
        200,
        20);
    const auto third = make_message(
        llp::MessageType::Add,
        llp::Side::Bid,
        3,
        300,
        30);
    llp::MarketDataPipeline pipeline(2);

    EXPECT_TRUE(pipeline.submit(first.data(), first.size()));
    EXPECT_TRUE(pipeline.submit(second.data(), second.size()));
    EXPECT_FALSE(pipeline.submit(third.data(), third.size()));

    EXPECT_EQ(pipeline.stats().parsed, 2);
    EXPECT_EQ(pipeline.stats().pushed, 2);
    EXPECT_EQ(pipeline.stats().failed_pushes, 1);
    EXPECT_EQ(pipeline.stats().parse_errors, 0);
}
