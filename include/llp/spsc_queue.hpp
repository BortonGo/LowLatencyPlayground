#pragma once
#include <cstddef>
#include <stdexcept>
#include <vector>
#include <atomic>

namespace llp {
    template <typename T>
    class SPSCQueue {
        alignas(64)std::atomic<std::size_t> head_ = 0;
        alignas(64)std::atomic<std::size_t> tail_ = 0;
        alignas(64)std::size_t mask_ = 0;
        std::vector<T> storage_;

        bool is_power_of_two(std::size_t value) {
            return value != 0 && (value & (value - 1)) == 0;
        }

    public:
        explicit SPSCQueue(std::size_t capacity) {
            if (!is_power_of_two(capacity)) throw std::invalid_argument("Capacity must be greater than zero and power of two");
            storage_.resize(capacity);
            mask_ = capacity-1;
        }
        bool push(const T& value) {
            if (full()) return false;
            std::size_t idx = tail_.load(std::memory_order_acquire) & mask_;
            storage_[idx] = value;
            tail_.fetch_add(1,std::memory_order_release);
            return true;
        }
        bool pop(T& out) {
            if (empty()) return false;
            std::size_t idx = head_.load(std::memory_order_acquire) & mask_;
            out = storage_[idx];
            head_.fetch_add(1,std::memory_order_release);
            return true;
        }

        std::size_t capacity() const noexcept{
            return storage_.size();
        }
        bool empty() const noexcept {
            return head_.load(std::memory_order_acquire) == tail_.load(std::memory_order_acquire);
        }
        bool full() const noexcept {
            return tail_.load(std::memory_order_acquire) - head_.load(std::memory_order_acquire) == capacity();
        }
    };
}