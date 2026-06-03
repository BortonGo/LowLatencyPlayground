#include <llp/spin_lock.hpp>
#include <utility>
#include <thread>
#include <cstddef>
#include "gtest/gtest.h"

constexpr std::size_t iterations_per_thread = 1'000;

TEST(SpinLock, OneThread) {
    llp::SpinLock lock;
    std::uint64_t cnt = 0;
    for (std::size_t i = 0; i < iterations_per_thread; ++i) {
        lock.lock();
        ++cnt;
        lock.unlock();
    }
    EXPECT_EQ(cnt, iterations_per_thread);
}
TEST(SpinLock, TwoThreads) {
    llp::SpinLock lock;
    std::uint64_t cnt = 0;
    std::vector<std::thread> workers;
    workers.reserve(2);
    for (std::size_t  i = 0; i < 2; ++i) {
        std::thread t([&]() {
            for (std::size_t j = 0; j < iterations_per_thread; ++j) {
                lock.lock();
                ++cnt;
                lock.unlock();
            }
        });
        workers.push_back(std::move(t));
    }
    for (std::size_t i = 0; i < 2; ++i) {
        workers[i].join();
    }
    EXPECT_EQ(cnt, iterations_per_thread*2);
}

TEST(SpinLock, FourThreads) {
    llp::SpinLock lock;
    std::uint64_t cnt = 0;
    std::vector<std::thread> workers;
    workers.reserve(4);
    for (std::size_t  i = 0; i < 4; ++i) {
        std::thread t([&]() {
            for (std::size_t j = 0; j < iterations_per_thread; ++j) {
                lock.lock();
                ++cnt;
                lock.unlock();
            }
        });
        workers.push_back(std::move(t));
    }
    for (std::size_t i = 0; i < 4; ++i) {
        workers[i].join();
    }
    EXPECT_EQ(cnt, iterations_per_thread*4);
}

