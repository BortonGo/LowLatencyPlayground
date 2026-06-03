#pragma once
#include <atomic>

namespace llp {
    class SpinLock {
        std::atomic_flag flag_ = ATOMIC_FLAG_INIT;
    public:
        SpinLock() = default;
        SpinLock(const SpinLock&) = delete;
        SpinLock& operator=(const SpinLock&) = delete;

        void lock() noexcept {
            while (flag_.test_and_set(std::memory_order_acquire)) {
            }
        }
        void unlock() noexcept {
            flag_.clear(std::memory_order_release);
        }
    };
}