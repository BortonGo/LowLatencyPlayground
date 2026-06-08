#include "llp/order_book_side.hpp"
#include "gtest/gtest.h"

llp::Order make_order(llp::OrderSide side, std::uint64_t id, std::uint64_t price) {
    llp::Order order{};
    order.id = id;
    order.price = price;
    order.side = side;
    order.sequence = (price + id) % 10 + 1;
    order.quantity = price % 100 + 1;
    return order;
}

TEST(OrderBookSide, NoBest) {
    llp::OrderBookSide<llp::OrderSide::Buy> obs;
    EXPECT_EQ(obs.best_order(), nullptr);
}

TEST(OrderBookSide, GetBestBuy) {
    llp::OrderBookSide<llp::OrderSide::Buy> obs;
    auto order = make_order(llp::OrderSide::Buy, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 255);
    EXPECT_EQ(best_ptr->price, 10000);
}

TEST(OrderBookSide, GetBestSell) {
    llp::OrderBookSide<llp::OrderSide::Sell> obs;
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(best_ptr->price, 888);
}

TEST(OrderBookSide, SamePricesAndCancel) {
    llp::OrderBookSide<llp::OrderSide::Sell> obs;
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

TEST(OrderBookSide, CancelMissing) {
    llp::OrderBookSide<llp::OrderSide::Sell> obs;
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

TEST(OrderBookSide, LevelRemoved) {
    llp::OrderBookSide<llp::OrderSide::Sell> obs;
    EXPECT_EQ(obs.level_count(), 0);
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    EXPECT_EQ(obs.level_count(), 1);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    EXPECT_EQ(obs.level_count(), 2);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(best_ptr->price, 888);
    EXPECT_EQ(obs.cancel(142), true);
    EXPECT_EQ(obs.level_count(), 1);
}

TEST(OrderBookSide, RejectOrder) {
    llp::OrderBookSide<llp::OrderSide::Buy> obs;
    EXPECT_EQ(obs.best_order(), nullptr);
    auto order = make_order(llp::OrderSide::Buy, 0, 10000);
    EXPECT_EQ(obs.add(order), false);
    order.id = 255;
    order.quantity = 0;
    EXPECT_EQ(obs.add(order), false);
}

TEST(OrderBookSide, CancelMissingDoesNotReserveOrderId) {
    llp::OrderBookSide<llp::OrderSide::Buy> obs;

    EXPECT_FALSE(obs.cancel(42));

    auto order = make_order(llp::OrderSide::Buy, 42, 100);
    EXPECT_TRUE(obs.add(order));
}








