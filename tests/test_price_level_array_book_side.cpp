#include "llp/price_level_array_book_side.hpp"
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

TEST(PriceLevelArrayBookSide, NoBest) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(100, 110);
    EXPECT_EQ(obs.best_order(), nullptr);
}

TEST(PriceLevelArrayBookSide, GetBestBuy) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(888, 10000);
    auto order = make_order(llp::OrderSide::Buy, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 255);
    EXPECT_EQ(best_ptr->price, 10000);
}

TEST(PriceLevelArrayBookSide, GetBestSell) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(888, 10000);
    auto order = make_order(llp::OrderSide::Sell, 255, 10000);
    EXPECT_EQ(obs.add(order), true);
    order.id = 142;
    order.price = 888;
    EXPECT_EQ(obs.add(order), true);
    auto best_ptr = obs.best_order();
    EXPECT_EQ(best_ptr->id, 142);
    EXPECT_EQ(best_ptr->price, 888);
}

TEST(PriceLevelArrayBookSide, SamePricesAndCancel) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(9999, 100000);
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

TEST(PriceLevelArrayBookSide, CancelMissing) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(9999, 10010);
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

TEST(PriceLevelArrayBookSide, LevelRemoved) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(888, 10000);
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

TEST(PriceLevelArrayBookSide, RejectOrder) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(9999, 10000);
    EXPECT_EQ(obs.best_order(), nullptr);
    auto order = make_order(llp::OrderSide::Buy, 0, 10000);
    EXPECT_EQ(obs.add(order), false);
    order.id = 255;
    order.quantity = 0;
    EXPECT_EQ(obs.add(order), false);
}

TEST(PriceLevelArrayBookSide, CancelMissingDoesNotReserveOrderId) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(99, 110);

    EXPECT_FALSE(obs.cancel(42));

    auto order = make_order(llp::OrderSide::Buy, 42, 100);
    EXPECT_TRUE(obs.add(order));
}

TEST(PriceLevelArrayBookSide, SellBestUpdatesWhenBetterPriceIsAdded) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(100, 110);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 1, 105)));
    EXPECT_EQ(obs.best_order()->id, 1);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 2, 101)));
    EXPECT_EQ(obs.best_order()->id, 2);
}

TEST(PriceLevelArrayBookSide, BuyBestUpdatesWhenBetterPriceIsAdded) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(100, 110);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Buy, 1, 101)));
    EXPECT_EQ(obs.best_order()->id, 1);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Buy, 2, 108)));
    EXPECT_EQ(obs.best_order()->id, 2);
}

TEST(PriceLevelArrayBookSide, SellPopBestAdvancesToNextLevel) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(100, 110);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 1, 100)));
    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 2, 102)));

    obs.pop_best();

    ASSERT_NE(obs.best_order(), nullptr);
    EXPECT_EQ(obs.best_order()->id, 2);
    EXPECT_EQ(obs.level_count(), 1);
    EXPECT_EQ(obs.order_count(), 1);
}

TEST(PriceLevelArrayBookSide, BuyPopBestAdvancesToNextLevel) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Buy> obs(100, 110);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Buy, 1, 100)));
    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Buy, 2, 109)));

    obs.pop_best();

    ASSERT_NE(obs.best_order(), nullptr);
    EXPECT_EQ(obs.best_order()->id, 1);
    EXPECT_EQ(obs.level_count(), 1);
    EXPECT_EQ(obs.order_count(), 1);
}

TEST(PriceLevelArrayBookSide, CancelBestAdvancesToNextLevel) {
    llp::PriceLevelArrayBookSide<llp::OrderSide::Sell> obs(100, 110);

    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 1, 100)));
    EXPECT_TRUE(obs.add(make_order(llp::OrderSide::Sell, 2, 101)));

    EXPECT_TRUE(obs.cancel(1));

    ASSERT_NE(obs.best_order(), nullptr);
    EXPECT_EQ(obs.best_order()->id, 2);
    EXPECT_EQ(obs.level_count(), 1);
    EXPECT_EQ(obs.order_count(), 1);
}







