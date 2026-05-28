#pragma once
#include <cstddef>
#include <vector>
#include <stdexcept>

namespace llp {
    template <typename T>
    class ObjectPool {
        std::vector<T> storage;
        std::vector<std::size_t> free_list;
    public:
        explicit ObjectPool(std::size_t capacity) : storage(capacity) {
            free_list.reserve(capacity);
            for (std::size_t i = 0; i < capacity; ++i) {
                free_list.push_back(i);
            }
        }
        T* acquire() {
            if (free_list.empty()) throw std::runtime_error("No free indexes");
            std::size_t idx = free_list.back();
            free_list.pop_back();
            return &storage[idx];
        }
        void release(T* t) {
            if (!t) throw std::runtime_error("Cannot release nullptr");
            T* begin = storage.data();
            T* end = begin + storage.size();
            if (t < begin || t >= end) throw std::runtime_error("Pointer does not belong to this pool");
            const std::size_t idx = static_cast<std::size_t>(t - begin);
            if (free_list.back() == idx) throw std::runtime_error("Cannot double release");
            free_list.push_back(idx);
        }
        std::size_t capacity() const noexcept {
            return storage.size();
        }
        std::size_t available() const noexcept {
            return free_list.size();
        }
        bool empty() const noexcept {
            return free_list.empty();
        }
    };
}
