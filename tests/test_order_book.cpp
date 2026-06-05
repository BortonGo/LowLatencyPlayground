#include "llp/order_book.hpp"
#include "gtest/gtest.h"

llp::MarketDataMessage make_msg(llp::MessageType type, llp::Side side) {
    llp::MarketDataMessage msg{};
    msg.price = 999;
    msg.quantity = 1010;
    msg.side = side;
    msg.type = type;
    msg.symbol_id = 202;
    return msg;
}

TEST(OrderBook, NoBest) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    EXPECT_EQ(ob.best_ask(bl), false);
    EXPECT_EQ(ob.best_bid(bl), false);
}

TEST(OrderBook, GetBest) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 1010);
    llp::MarketDataMessage msg2 = make_msg(llp::MessageType::Add, llp::Side::Bid);
    msg2.price = 3030;
    ob.apply(msg2);
    EXPECT_EQ(ob.best_bid(bl), true);
    EXPECT_EQ(bl.price, 3030);
    EXPECT_EQ(bl.quantity, 1010);
}

TEST(OrderBook, AskBest) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    msg1.price = 2020;
    ob.apply(msg1);
    msg1.price = 800;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 800);
    EXPECT_EQ(bl.quantity, 1010);
}

TEST(OrderBook, BidBest) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Bid);
    ob.apply(msg1);
    msg1.price = 3030;
    ob.apply(msg1);
    msg1.price = 100;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_bid(bl), true);
    EXPECT_EQ(bl.price, 3030);
    EXPECT_EQ(bl.quantity, 1010);
}

TEST(OrderBook, AddSameBid) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Bid);
    ob.apply(msg1);
    ob.apply(msg1);
    ob.apply(msg1);
    EXPECT_EQ(ob.best_bid(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 3030);
}

TEST(OrderBook, AddSameAsk) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    ob.apply(msg1);
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 3030);
}

TEST(OrderBook, CancelTrade) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    ob.apply(msg1);
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 3030);
    msg1.type = llp::MessageType::Cancel;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 2020);
    msg1.type = llp::MessageType::Trade;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 1010);
}

TEST(OrderBook, RemoveLevel) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    msg1.price = 2020;
    ob.apply(msg1);
    msg1.price = 800;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 800);
    EXPECT_EQ(bl.quantity, 1010);
    msg1.price = 800;
    msg1.quantity = 1500;
    msg1.type = llp::MessageType::Cancel;
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(bl.price, 999);
    EXPECT_EQ(bl.quantity, 1010);
}

TEST(OrderBook, Clear) {
    llp::OrderBook ob;
    llp::BookLevel bl{};
    llp::MarketDataMessage msg1 = make_msg(llp::MessageType::Add, llp::Side::Ask);
    ob.apply(msg1);
    ob.apply(msg1);
    ob.apply(msg1);
    EXPECT_EQ(ob.best_ask(bl), true);
    EXPECT_EQ(ob.ask_levels(), 1);
    ob.clear();
    EXPECT_EQ(ob.ask_levels(), 0);
}
