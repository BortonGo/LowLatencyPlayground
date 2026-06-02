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
            auto tail = tail_.load(std::memory_order_relaxed);
            auto head = head_.load(std::memory_order_acquire);
            if (tail - head == capacity()) return false;
            storage_[tail & mask_] = value;
            tail_.store(tail + 1,std::memory_order_release);
            return true;
        }
        bool pop(T& out) {
            auto tail = tail_.load(std::memory_order_acquire);
            auto head = head_.load(std::memory_order_relaxed);
            if (head == tail) return false;
            out = storage_[head & mask_];
            head_.store(head + 1,std::memory_order_release);
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