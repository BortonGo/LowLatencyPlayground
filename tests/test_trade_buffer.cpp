#include "llp/matching_engine.hpp"
#include "gtest/gtest.h"

namespace {
    llp::Order make_order(
        llp::OrderSide side,
        std::uint64_t id,
        std::uint64_t price,
        std::uint32_t quantity
    ) {
        llp::Order order{};
        order.side = side;
        order.id = id;
        order.price = price;
        order.quantity = quantity;
        return order;
    }
}

TEST(TradeBuffer, StartsEmpty) {
    llp::Trade data[2];
    llp::TradeBuffer buffer(data, 2);

    EXPECT_EQ(buffer.size(), 0);
    EXPECT_EQ(buffer.capacity(), 2);
    EXPECT_FALSE(buffer.full());
}

TEST(TradeBuffer, PushIncreasesSize) {
    llp::Trade data[2];
    llp::TradeBuffer buffer(data, 2);

    llp::Trade trade{};
    trade.buy_order_id = 10;
    trade.sell_order_id = 20;
    trade.price = 100;
    trade.quantity = 5;

    EXPECT_TRUE(buffer.push(trade));
    EXPECT_EQ(buffer.size(), 1);
    EXPECT_FALSE(buffer.full());

    EXPECT_EQ(buffer[0].buy_order_id, 10);
    EXPECT_EQ(buffer[0].sell_order_id, 20);
    EXPECT_EQ(buffer[0].price, 100);
    EXPECT_EQ(buffer[0].quantity, 5);
}

TEST(TradeBuffer, ClearResetsSize) {
    llp::Trade data[2];
    llp::TradeBuffer buffer(data, 2);

    llp::Trade trade{};
    trade.quantity = 1;

    EXPECT_TRUE(buffer.push(trade));
    EXPECT_TRUE(buffer.push(trade));
    EXPECT_TRUE(buffer.full());

    buffer.clear();

    EXPECT_EQ(buffer.size(), 0);
    EXPECT_FALSE(buffer.full());
    EXPECT_EQ(buffer.capacity(), 2);
}

TEST(TradeBuffer, PushOverCapacityReturnsFalse) {
    llp::Trade data[1];
    llp::TradeBuffer buffer(data, 1);

    llp::Trade first{};
    first.quantity = 1;

    llp::Trade second{};
    second.quantity = 2;

    EXPECT_TRUE(buffer.push(first));
    EXPECT_TRUE(buffer.full());

    EXPECT_FALSE(buffer.push(second));
    EXPECT_EQ(buffer.size(), 1);
    EXPECT_EQ(buffer[0].quantity, 1);
}

TEST(TradeBuffer, MatchingReturnsFalseWhenTradeBufferFull) {
    llp::MatchingEngine engine;

    llp::Trade data[1];
    llp::TradeBuffer trades(data, 1);

    auto sell1 = make_order(llp::OrderSide::Sell, 1, 100, 3);
    auto sell2 = make_order(llp::OrderSide::Sell, 2, 101, 3);

    EXPECT_TRUE(engine.add(sell1, trades));
    EXPECT_TRUE(engine.add(sell2, trades));
    EXPECT_EQ(trades.size(), 0);

    auto buy = make_order(llp::OrderSide::Buy, 10, 101, 6);

    EXPECT_FALSE(engine.add(buy, trades));

    EXPECT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 10);
    EXPECT_EQ(trades[0].sell_order_id, 1);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 3);
}

TEST(TradeBuffer, AddBuyRestsWhenBookIsEmpty) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto buy = make_order(llp::OrderSide::Buy, 1, 100, 10);

    EXPECT_TRUE(engine.add(buy, trades));
    EXPECT_EQ(trades.size(), 0);

    const auto* best_bid = engine.best_bid();
    ASSERT_NE(best_bid, nullptr);
    EXPECT_EQ(best_bid->id, 1);
    EXPECT_EQ(best_bid->price, 100);
    EXPECT_EQ(best_bid->quantity, 10);

    EXPECT_EQ(engine.best_ask(), nullptr);
}

TEST(TradeBuffer, AddSellRestsWhenBookIsEmpty) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 1, 100, 10);

    EXPECT_TRUE(engine.add(sell, trades));
    EXPECT_EQ(trades.size(), 0);

    const auto* best_ask = engine.best_ask();
    ASSERT_NE(best_ask, nullptr);
    EXPECT_EQ(best_ask->id, 1);
    EXPECT_EQ(best_ask->price, 100);
    EXPECT_EQ(best_ask->quantity, 10);

    EXPECT_EQ(engine.best_bid(), nullptr);
}

TEST(TradeBuffer, BuyCrossesAskAndCreatesTrade) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 10, 100, 5);
    EXPECT_TRUE(engine.add(sell, trades));

    auto buy = make_order(llp::OrderSide::Buy, 20, 101, 5);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 20);
    EXPECT_EQ(trades[0].sell_order_id, 10);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 5);

    EXPECT_EQ(engine.best_bid(), nullptr);
    EXPECT_EQ(engine.best_ask(), nullptr);
}

TEST(TradeBuffer, SellCrossesBidAndCreatesTrade) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto buy = make_order(llp::OrderSide::Buy, 10, 100, 5);
    EXPECT_TRUE(engine.add(buy, trades));

    auto sell = make_order(llp::OrderSide::Sell, 20, 99, 5);
    EXPECT_TRUE(engine.add(sell, trades));

    ASSERT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 10);
    EXPECT_EQ(trades[0].sell_order_id, 20);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 5);

    EXPECT_EQ(engine.best_bid(), nullptr);
    EXPECT_EQ(engine.best_ask(), nullptr);
}

TEST(TradeBuffer, PartialFillIncomingBuy) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 10, 100, 4);
    EXPECT_TRUE(engine.add(sell, trades));

    auto buy = make_order(llp::OrderSide::Buy, 20, 101, 10);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 20);
    EXPECT_EQ(trades[0].sell_order_id, 10);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 4);

    auto best = engine.best_bid();
    EXPECT_EQ(best->id, 20);
    EXPECT_EQ(best->quantity, 6);
    EXPECT_EQ(engine.best_ask(), nullptr);
}

TEST(TradeBuffer, PartialFillRestingAsk) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 10, 100, 10);
    EXPECT_TRUE(engine.add(sell, trades));

    auto buy = make_order(llp::OrderSide::Buy, 20, 101, 4);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 20);
    EXPECT_EQ(trades[0].sell_order_id, 10);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 4);

    auto best = engine.best_ask();
    EXPECT_EQ(best->id, 10);
    EXPECT_EQ(best->quantity, 6);
    EXPECT_EQ(engine.best_bid(), nullptr);
}

TEST(TradeBuffer, MultipleLevelsMatchInPriceTimeOrder) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell1 = make_order(llp::OrderSide::Sell, 1, 101, 3);
    EXPECT_TRUE(engine.add(sell1, trades));

    auto sell2 = make_order(llp::OrderSide::Sell, 2, 100, 4);
    EXPECT_TRUE(engine.add(sell2, trades));

    auto sell3 = make_order(llp::OrderSide::Sell, 3, 102, 5);
    EXPECT_TRUE(engine.add(sell3, trades));

    auto buy = make_order(llp::OrderSide::Buy, 10, 102, 12);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 3);
    EXPECT_EQ(trades[0].buy_order_id, 10);
    EXPECT_EQ(trades[0].sell_order_id, 2);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 4);

    EXPECT_EQ(trades[1].buy_order_id, 10);
    EXPECT_EQ(trades[1].sell_order_id, 1);
    EXPECT_EQ(trades[1].price, 101);
    EXPECT_EQ(trades[1].quantity, 3);

    EXPECT_EQ(trades[2].buy_order_id, 10);
    EXPECT_EQ(trades[2].sell_order_id, 3);
    EXPECT_EQ(trades[2].price, 102);
    EXPECT_EQ(trades[2].quantity, 5);

    EXPECT_EQ(engine.best_ask(), nullptr);
    EXPECT_EQ(engine.best_bid(), nullptr);
}

TEST(TradeBuffer, FIFOWithinSamePrice) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell1 = make_order(llp::OrderSide::Sell, 1, 100, 3);
    EXPECT_TRUE(engine.add(sell1, trades));

    auto sell2 = make_order(llp::OrderSide::Sell, 2, 100, 7);
    EXPECT_TRUE(engine.add(sell2, trades));

    auto buy = make_order(llp::OrderSide::Buy, 10, 100, 10);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 2);
    EXPECT_EQ(trades[0].buy_order_id, 10);
    EXPECT_EQ(trades[0].sell_order_id, 1);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 3);

    EXPECT_EQ(trades[1].buy_order_id, 10);
    EXPECT_EQ(trades[1].sell_order_id, 2);
    EXPECT_EQ(trades[1].price, 100);
    EXPECT_EQ(trades[1].quantity, 7);

    EXPECT_EQ(engine.best_ask(), nullptr);
    EXPECT_EQ(engine.best_bid(), nullptr);
}

TEST(TradeBuffer, CacelRestingOrder) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto buy = make_order(llp::OrderSide::Buy, 10, 100, 5);
    EXPECT_TRUE(engine.add(buy, trades));
    EXPECT_EQ(trades.size(), 0);
    EXPECT_TRUE(engine.cancel(10));
    EXPECT_EQ(engine.best_bid(), nullptr);
    EXPECT_FALSE(engine.cancel(10));
}

TEST(TradeBuffer, CancelFilledOrderReturnsFalse) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 10, 100, 5);
    EXPECT_TRUE(engine.add(sell, trades));

    auto buy = make_order(llp::OrderSide::Buy, 20, 100, 5);
    EXPECT_TRUE(engine.add(buy, trades));

    ASSERT_EQ(trades.size(), 1);
    EXPECT_EQ(trades[0].buy_order_id, 20);
    EXPECT_EQ(trades[0].sell_order_id, 10);
    EXPECT_EQ(trades[0].price, 100);
    EXPECT_EQ(trades[0].quantity, 5);

    EXPECT_EQ(engine.best_ask(), nullptr);
    EXPECT_EQ(engine.best_bid(), nullptr);

    EXPECT_FALSE(engine.cancel(10));
    EXPECT_FALSE(engine.cancel(20));
}

TEST(TradeBuffer, NonCrossingOrderRests) {
    llp::MatchingEngine engine;
    llp::Trade data[100];
    llp::TradeBuffer trades(data, 100);

    auto sell = make_order(llp::OrderSide::Sell, 10, 105, 5);
    EXPECT_TRUE(engine.add(sell, trades));
    EXPECT_EQ(trades.size(), 0);

    auto buy = make_order(llp::OrderSide::Buy, 20, 100, 5);
    EXPECT_TRUE(engine.add(buy, trades));
    EXPECT_EQ(trades.size(), 0);

    EXPECT_EQ(engine.best_bid()->id, 20);
    EXPECT_EQ(engine.best_ask()->id, 10);
}



