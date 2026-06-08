#pragma once
#include <cstddef>

namespace llp {
    struct Trade {
        std::uint64_t buy_order_id = 0;
        std::uint64_t sell_order_id = 0;
        std::uint64_t price = 0;
        std::uint64_t quantity = 0;
    };

    class TradeBuffer {
        Trade* data_;
        std::size_t capacity_;
        std::size_t size_ = 0;
    public:
        TradeBuffer(Trade* data, std::size_t capacity) noexcept {
            data_ = data;
            capacity_ = capacity;
        }

        bool push(const Trade& trade) noexcept {
            if (full()) return false;
            data_[size_++] = trade;
            return true;
        }
        void clear() noexcept {
            size_ = 0;
        }

        std::size_t size() const noexcept {
            return size_;
        }
        std::size_t capacity() const noexcept {
            return capacity_;
        }
        bool full() const noexcept {
            return (size_ == capacity_);
        }

        const Trade& operator[](std::size_t index) const {
            return data_[index];
        }
    };
}
