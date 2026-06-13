#pragma once
#include <cstddef>
#include <vector>
#include <unordered_map>
#include <deque>
#include <type_traits>
#include <functional>
#include "llp/order.hpp"

namespace llp {
    template <OrderSide Side>
    class PriceLevelArrayBookSide {
        std::vector<std::deque<Order>> levels_;
        std::uint64_t minPrice = 0;
        std::unordered_map<std::uint64_t, std::uint64_t> order_level_index;
        std::size_t order_count_ = 0;
        std::size_t non_empty_levels_cnt = 0;
        std::size_t best_level_index_ = 0;
        bool has_best_ = false;

        void update_best_after_add(std::size_t index) noexcept {
            if (!has_best_) {
                best_level_index_ = index;
                has_best_ = true;
                return;
            }

            if constexpr (Side == llp::OrderSide::Sell) {
                if (index < best_level_index_) {
                    best_level_index_ = index;
                }
            } else {
                if (index > best_level_index_) {
                    best_level_index_ = index;
                }
            }
        }

        void advance_best_from_empty_level() noexcept {
            if (non_empty_levels_cnt == 0) {
                has_best_ = false;
                return;
            }

            if constexpr (Side == llp::OrderSide::Sell) {
                while (best_level_index_ < levels_.size() && levels_[best_level_index_].empty()) {
                    ++best_level_index_;
                }
            } else {
                while (best_level_index_ > 0 && levels_[best_level_index_].empty()) {
                    --best_level_index_;
                }
            }

            has_best_ = best_level_index_ < levels_.size() && !levels_[best_level_index_].empty();
        }
    public:
        explicit PriceLevelArrayBookSide(std::uint64_t min_price, std::uint64_t max_price) : levels_(max_price-min_price+1),
            minPrice(min_price) {}

        bool add(const Order& order) {
            if (order.id == 0 || order.quantity == 0 ||
                order.side != Side ||
                order_level_index.count(order.id)) return false;
            if (order.price < minPrice) return false;
            const auto index = order.price - minPrice;
            if (index >= levels_.size()) return false;
            if (levels_[index].empty()) ++non_empty_levels_cnt;
            levels_[index].push_back(order);
            order_level_index[order.id] = index;
            ++order_count_;
            update_best_after_add(index);
            return true;
        }

        bool cancel(std::uint64_t order_id) {
            auto index_it = order_level_index.find(order_id);
            if (index_it == order_level_index.end()) return false;
            auto& orders = levels_[index_it->second];
            for (auto o_it = orders.begin(); o_it != orders.end(); ++o_it) {
                if (o_it->id == order_id) {
                    orders.erase(o_it);
                    if (orders.empty()) {
                        --non_empty_levels_cnt;
                        if (index_it->second == best_level_index_) {
                            advance_best_from_empty_level();
                        }
                    }
                    order_level_index.erase(order_id);
                    --order_count_;
                    return true;
                }
            }
            return false;
        }

        void pop_best() {
            if (!has_best_) return;

            auto& level = levels_[best_level_index_];
            if (level.empty()) {
                advance_best_from_empty_level();
                return;
            }

            order_level_index.erase(level.front().id);
            level.pop_front();
            --order_count_;

            if (level.empty()) {
                --non_empty_levels_cnt;
                advance_best_from_empty_level();
            }
        }

        const Order* best_order() const noexcept {
            if (!has_best_) return nullptr;
            const auto& level = levels_[best_level_index_];
            return level.empty() ? nullptr : &level.front();
        }

        Order* best_order() noexcept {
            if (!has_best_) return nullptr;
            auto& level = levels_[best_level_index_];
            return level.empty() ? nullptr : &level.front();
        }

        bool empty() const noexcept {
            return order_count_ == 0;
        }
        std::size_t order_count() const noexcept {
            return order_count_;
        }
        std::size_t level_count() const noexcept {
            return non_empty_levels_cnt;
        }
        void reserve(std::size_t order_cnt) {
            order_level_index.reserve(order_cnt);
        }
    };
}
