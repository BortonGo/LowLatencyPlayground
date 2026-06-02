#pragma once
#include <cstddef>
#include <stdexcept>
#include <vector>

namespace llp {
    template <typename T>
    class RingBuffer {
        std::vector<T> storage_;
        std::size_t size_ = 0;
        std::size_t head_ = 0;
        std::size_t tail_ = 0;
    public:
        explicit RingBuffer(std::size_t cap) : storage_(cap) {
            if (cap == 0) throw std::invalid_argument("Capacity must be greater than zero");
        }
        bool push(const T& value) {
            if (full()) return false;
            storage_[tail_] = value;
            tail_ = (tail_ + 1) % storage_.size();
            ++size_;
            return true;
        }
        bool pop(T& out) {
            if (empty()) return false;
            out = storage_[head_];
            head_ = (head_ + 1) % storage_.size();
            --size_;
            return true;
        }

        std::size_t capacity() const noexcept{
            return storage_.size();
        }
        std::size_t size() const noexcept{
            return size_;
        }
        bool empty() const noexcept {
            return size_ == 0;
        }
        bool full() const noexcept {
            return size_ == storage_.size();
        }
        void clear() {
            head_ = 0;
            tail_ = 0;
            size_ = 0;
        }
    };
}
