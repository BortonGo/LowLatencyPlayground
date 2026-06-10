#include "llp/order_book_side_flat.hpp"
#include "gtest/gtest.h"

namespace {
    llp::Order make_order(llp::OrderSide side, std::uint64_t id, std::uint64_t price) {
        llp::Order order{};
        order.id = id;
        order.price = price;
        order.side = side;
        order.sequence = (price + id) % 10 + 1;
        order.quantity = price % 100 + 1;
        return order;
    }
}

TEST(OrderBookSideFlat, NoBest) {
    llp::FlatAskBookSide obs(10000, 11000);
    EXPECT_EQ(obs.best_order(), nullptr);
}

TEST(OrderBookSideFlat, GetBestSell) {
    llp::FlatAskBookSide obs(888, 11000);
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(best_ptr->price, 888);
}

TEST(OrderBookSideFlat, SamePricesAndCancel) {
    llp::FlatAskBookSide obs(10000, 11000);
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 255);
    EXPECT_EQ(obs.cancel(255), true);
    best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(obs.cancel(142), true);
}

TEST(OrderBookSideFlat, CancelMissing) {
    llp::FlatAskBookSide obs(10000, 11000);
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 255);
    EXPECT_EQ(obs.cancel(255), true);
    best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(obs.cancel(654), false);
}

TEST(OrderBookSideFlat, RejectOrder) {
    llp::FlatAskBookSide obs(10000, 11000);
    EXPECT_EQ(obs.best_order(), nullptr);
    auto order = make_order(llp::OrderSide::Sell, 0, 10000);
    EXPECT_EQ(obs.add(order), false);
    order.id = 255;
    order.quantity = 0;
    EXPECT_EQ(obs.add(order), false);
}

TEST(OrderBookSideFlat, CancelMissingDoesNotReserveOrderId) {
    llp::FlatAskBookSide obs(10000, 11000);
    EXPECT_FALSE(obs.cancel(42));

    auto order = make_order(llp::OrderSide::Buy, 42, 10100);
    EXPECT_FALSE(obs.add(order));
}

TEST(OrderBookSideFlat, PopBestSkipsEmptyLowerLevels) {
    llp::FlatAskBookSide obs(100, 110);

    auto order = make_order(llp::OrderSide::Sell, 1, 105);
    EXPECT_TRUE(obs.add(order));

    obs.pop_best();

    EXPECT_EQ(obs.best_order(), nullptr);
}

TEST(OrderBookSideFlat, OutOfRange) {
    llp::FlatAskBookSide obs(100, 110);

    auto order = make_order(llp::OrderSide::Sell, 1, 99);
    EXPECT_FALSE(obs.add(order));
    order.price = 111;
    EXPECT_FALSE(obs.add(order));
}








