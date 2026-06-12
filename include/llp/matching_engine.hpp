#pragma once
#include <cstddef>
#include <cstdint>
#include <algorithm>
#include <vector>
#include "llp/order.hpp"
#include "llp/order_book_side.hpp"
#include "llp/trade_buffer.hpp"

namespace llp {

    class MatchingEngine {
        llp::OrderBookSide<OrderSide::Buy> buy;
        llp::OrderBookSide<OrderSide::Sell> sell;
    public:
        bool add(Order order, std::vector<Trade>& trades) {
            if (order.id == 0 || order.quantity == 0 || (order.side != llp::OrderSide::Buy &&
                order.side != llp::OrderSide::Sell)) return false;
            if (order.side == llp::OrderSide::Buy) {
                while (order.quantity > 0) {
                    Order* best_ask = sell.best_order();
                    if (!best_ask) break;
                    if (best_ask->price > order.price) break;
                    std::uint32_t qty = std::min(order.quantity, best_ask->quantity);

                    Trade trade{};
                    trade.quantity = qty;
                    trade.price = best_ask->price;
                    trade.buy_order_id = order.id;
                    trade.sell_order_id = best_ask->id;

                    trades.push_back(trade);

                    order.quantity -= qty;
                    best_ask->quantity -= qty;

                    if (best_ask->quantity == 0) {
                        sell.pop_best();
                    }
                }
                if (order.quantity > 0) {
                    return buy.add(order);
                }
            } else {
                while (order.quantity > 0) {
                    Order* best_bid = buy.best_order();
                    if (!best_bid) break;
                    if (best_bid->price < order.price) break;
                    std::uint32_t qty = std::min(order.quantity, best_bid->quantity);

                    Trade trade{};
                    trade.quantity = qty;
                    trade.price = best_bid->price;
                    trade.sell_order_id = order.id;
                    trade.buy_order_id = best_bid->id;

                    trades.push_back(trade);

                    order.quantity -= qty;
                    best_bid->quantity -= qty;

                    if (best_bid->quantity == 0) {
                        buy.pop_best();
                    }
                }
                if (order.quantity > 0) {
                    return sell.add(order);
                }
            }
            return true;
        }

        bool add(Order order, TradeBuffer& trades) {
            if (order.id == 0 || order.quantity == 0 || (order.side != llp::OrderSide::Buy &&
                order.side != llp::OrderSide::Sell)) return false;
            if (order.side == llp::OrderSide::Buy) {
                while (order.quantity > 0) {
                    Order* best_ask = sell.best_order();
                    if (!best_ask) break;
                    if (best_ask->price > order.price) break;
                    std::uint32_t qty = std::min(order.quantity, best_ask->quantity);

                    Trade trade{};
                    trade.quantity = qty;
                    trade.price = best_ask->price;
                    trade.buy_order_id = order.id;
                    trade.sell_order_id = best_ask->id;

                    if (!trades.push(trade)) return false;

                    order.quantity -= qty;
                    best_ask->quantity -= qty;

                    if (best_ask->quantity == 0) {
                        sell.pop_best();
                    }
                }
                if (order.quantity > 0) {
                    return buy.add(order);
                }
            } else {
                while (order.quantity > 0) {
                    Order* best_bid = buy.best_order();
                    if (!best_bid) break;
                    if (best_bid->price < order.price) break;
                    std::uint32_t qty = std::min(order.quantity, best_bid->quantity);

                    Trade trade{};
                    trade.quantity = qty;
                    trade.price = best_bid->price;
                    trade.sell_order_id = order.id;
                    trade.buy_order_id = best_bid->id;

                    if (!trades.push(trade)) return false;

                    order.quantity -= qty;
                    best_bid->quantity -= qty;

                    if (best_bid->quantity == 0) {
                        buy.pop_best();
                    }
                }
                if (order.quantity > 0) {
                    return sell.add(order);
                }
            }
            return true;
        }

        bool cancel(std::uint64_t order_id) {
            if (buy.cancel(order_id)) return true;
            if (sell.cancel(order_id)) return true;
            return false;
        }

        bool old_cancel(std::uint64_t order_id) {
            if (buy.old_cancel(order_id)) return true;
            if (sell.old_cancel(order_id)) return true;
            return false;
        }

        const Order* best_bid() const noexcept {
            return buy.best_order();
        }
        const Order* best_ask() const noexcept {
            return sell.best_order();
        }

        void reserve(std::size_t order_cnt) {
            buy.reserve(order_cnt);
            sell.reserve(order_cnt);
        }
    };

}