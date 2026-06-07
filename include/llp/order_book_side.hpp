#pragma once
#include <cstddef>
#include <map>
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
        std::size_t order_count_ = 0;
    public:
        bool add(const Order& order) {
            if (order.id == 0 || order.quantity == 0 || order.side != Side) return false;
            levels_[order.price].push_back(order);
            ++order_count_;
            return true;
        }
        bool cancel(std::uint64_t order_id) {
            for (auto l_it = levels_.begin(); l_it != levels_.end(); ++l_it) {
                auto& orders = l_it->second;
                for (auto o_it = orders.begin(); o_it != orders.end(); ++o_it) {
                    if (o_it->id == order_id) {
                        orders.erase(o_it);
                        if (orders.empty()) {
                            levels_.erase(l_it);
                        }
                        --order_count_;
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

        const Order* best_order() const noexcept {
            if (levels_.empty()) return nullptr;
            const auto& orders = levels_.begin()->second;
            if (orders.empty()) return nullptr;
            return &orders.front();
        }
    };
}
