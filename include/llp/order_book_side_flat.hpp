#pragma once
#include <cstddef>
#include <vector>
#include <unordered_map>
#include <deque>
#include "llp/order.hpp"

namespace llp {
    class FlatAskBookSide {
        std::vector<std::deque<Order>> levels_;
        std::uint64_t minPrice = 0;
        std::unordered_map<std::uint64_t, std::uint64_t> order_level_index;
        std::size_t order_count_ = 0;
    public:
        explicit FlatAskBookSide(std::uint64_t min_price, std::uint64_t max_price) : levels_(max_price-min_price+1),
            minPrice(min_price) {}

        bool add(const Order& order) {
            if (order.id == 0 || order.quantity == 0 ||
                order.side != llp::OrderSide::Sell ||
                order_level_index.count(order.id)) return false;
            if (order.price < minPrice) return false;
            const auto index = order.price - minPrice;
            if (index >= levels_.size()) return false;
            levels_[index].push_back(order);
            order_level_index[order.id] = index;
            ++order_count_;
            return true;
        }
        const Order* best_order() const noexcept {
            if (levels_.empty()) return nullptr;
            for (auto& order : levels_) {
                if (!order.empty()) {
                    return &order.front();
                }
            }
            return nullptr;
        }
        bool cancel(std::uint64_t order_id) {
            auto index_it = order_level_index.find(order_id);
            if (index_it == order_level_index.end()) return false;
            auto& orders = levels_[index_it->second];
            for (auto o_it = orders.begin(); o_it != orders.end(); ++o_it) {
                if (o_it->id == order_id) {
                    orders.erase(o_it);
                    order_level_index.erase(order_id);
                    --order_count_;
                    return true;
                }
            }
            return false;
        }
        void pop_best() {
            if (levels_.empty()) return;
            for (auto& order : levels_) {
                if (!order.empty()) {
                    --order_count_;
                    order_level_index.erase(order.front().id);
                    order.pop_front();
                    return;
                }
            }
        }
        void reserve(std::size_t orders_cnt) {
            order_level_index.reserve(orders_cnt);
        }
    };
}
