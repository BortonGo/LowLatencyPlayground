#pragma once
#include <cstddef>
#include <map>
#include "llp/market_data_message.hpp"

namespace llp {
    struct BookLevel {
        std::uint64_t price = 0;
        std::uint32_t quantity = 0;
    };

    class OrderBook {
        std::map<std::uint64_t, std::uint32_t, std::greater<>> bids_;
        std::map<std::uint64_t, std::uint32_t> asks_;

        void apply_to_bids(std::map<std::uint64_t, std::uint32_t, std::greater<>>& levels,
            const MarketDataMessage& msg) {
            switch (msg.type) {
                case MessageType::Add:
                    levels[msg.price] += msg.quantity;
                    break;
                case MessageType::Trade:
                case MessageType::Cancel:
                    auto it = levels.find(msg.price);
                    if (it == levels.end()) return;
                    if (it->second <= msg.quantity) {
                        levels.erase(it);
                    } else {
                        it->second -= msg.quantity;
                    }
                    break;
            }
        }
        void apply_to_asks(std::map<std::uint64_t, std::uint32_t>& levels,
            const MarketDataMessage& msg) {
            switch (msg.type) {
                case MessageType::Add:
                    levels[msg.price] += msg.quantity;
                    break;
                case MessageType::Trade:
                case MessageType::Cancel:
                    auto it = levels.find(msg.price);
                    if (it == levels.end()) return;
                    if (it->second <= msg.quantity) {
                        levels.erase(it);
                    } else {
                        it->second -= msg.quantity;
                    }
                    break;
            }
        }
    public:
        void apply(const MarketDataMessage& msg) {
            if (msg.side == Side::Ask) {
                apply_to_asks(asks_, msg);
            } else {
                apply_to_bids(bids_, msg);
            }
        }

        bool best_bid(BookLevel& out) const noexcept {
            if (bids_.empty()) return false;
            out.price = bids_.begin()->first;
            out.quantity = bids_.begin()->second;
            return true;
        }
        bool best_ask(BookLevel& out) const noexcept {
            if (asks_.empty()) return false;
            out.price = asks_.begin()->first;
            out.quantity = asks_.begin()->second;
            return true;
        }

        std::size_t bid_levels() const noexcept {
            return bids_.size();
        }
        std::size_t ask_levels() const noexcept {
            return asks_.size();
        }

        void clear() {
            bids_.clear();
            asks_.clear();
        }
    };
}