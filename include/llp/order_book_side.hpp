#pragma once
#include <cstddef>
#include <map>
#include <unordered_map>
#include <deque>
#include <type_traits>
#include <functional>
#include "llp/order.hpp"

namespace llp {
    template <OrderSide Side>
    class OrderBookSide {
        using Comparator = std::conditional_t<
            Side == OrderSide::Buy,
            std::greater<std::uint64_t>,
            std::less<std::uint64_t>
            >;
        std::map<std::uint64_t, std::deque<Order>, Comparator> levels_;
        std::unordered_map<std::uint64_t, std::uint64_t> order_price_index;
        std::size_t order_count_ = 0;
    public:
        bool add(const Order& order) {
            if (order.id == 0 || order.quantity == 0 ||
                order.side != Side || order_price_index.count(order.id)) return false;
            levels_[order.price].push_back(order);
            order_price_index[order.id] = order.price;
            ++order_count_;
            return true;
        }
        bool cancel(std::uint64_t order_id) {
            auto index_it = order_price_index.find(order_id);
            if (index_it == order_price_index.end()) return false;
            auto levels_it = levels_.find(index_it->second);
            if (levels_it == levels_.end()) return false;
            auto& orders = levels_it->second;
            for (auto o_it = orders.begin(); o_it != orders.end(); ++o_it) {
                if (o_it->id == order_id) {
                    orders.erase(o_it);
                    if (orders.empty()) {
                        levels_.erase(levels_it);
                    }
                    order_price_index.erase(order_id);
                    --order_count_;
                    return true;
                }
            }
            return false;
        }

        bool old_cancel(std::uint64_t order_id) {
            for (auto level_it = levels_.begin(); level_it != levels_.end(); ++level_it) {
                auto& orders = level_it->second;
                for (auto order_it = orders.begin(); order_it != orders.end(); ++order_it) {
                    if (order_it->id == order_id) {
                        order_price_index.erase(order_id);
                        orders.erase(order_it);
                        --order_count_;
                        if (orders.empty()) {
                            levels_.erase(level_it);
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        bool empty() const noexcept {
            return order_count_ == 0;
        }
        std::size_t order_count() const noexcept {
            return order_count_;
        }
        std::size_t level_count() const noexcept {
            return levels_.size();
        }

        Order* best_order() noexcept {
            if (levels_.empty()) return nullptr;
            auto& orders = levels_.begin()->second;
            if (orders.empty()) return nullptr;
            return &orders.front();
        }

        const Order* best_order() const noexcept {
            if (levels_.empty()) return nullptr;
            const auto& orders = levels_.begin()->second;
            if (orders.empty()) return nullptr;
            return &orders.front();
        }

        void pop_best() {
            if (levels_.empty()) return;
            auto& orders = levels_.begin()->second;
            if (orders.empty()) return;

            --order_count_;
            order_price_index.erase(orders.front().id);
            orders.pop_front();

            if (orders.empty()) {
                levels_.erase(levels_.begin());
            }
        }

        void reserve(std::size_t order_cnt) {
            order_price_index.reserve(order_cnt);
        }
    };
}
