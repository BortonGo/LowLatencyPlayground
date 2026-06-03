#include <iostream>
#include <atomic>
#include <thread>
#include <chrono>
#include <cstdint>
#include <cstddef>

constexpr std::uint64_t iterations_per_thread = 100'000'000;

struct UnpaddedCounters {
    std::atomic<std::uint64_t> a{0};
    std::atomic<std::uint64_t> b{0};
};

struct alignas(64) PaddedCounter {
    std::atomic<std::uint64_t> value{0};
    char padding[64 - sizeof(std::atomic<std::uint64_t>)]{};
};

static_assert(sizeof(PaddedCounter) == 64);
static_assert(alignof(PaddedCounter) == 64);

struct PaddedCounters {
    PaddedCounter a;
    PaddedCounter b;
};

void runPadded() {
    PaddedCounters pc;

    auto start = std::chrono::steady_clock::now();

    std::thread t1([&]() {
        for (std::size_t i = 0; i < iterations_per_thread; ++i) {
            pc.a.value.fetch_add(1,std::memory_order_relaxed);
        }
    });

    std::thread t2([&]() {
        for (std::size_t i = 0; i < iterations_per_thread; ++i) {
            pc.b.value.fetch_add(1,std::memory_order_relaxed);
        }
    });

    t1.join();
    t2.join();

    auto end = std::chrono::steady_clock::now();
    auto time = end - start;
    std::cout << "=== PaddedCounters ===\n";
    std::cout << "Iteration per thread: " << iterations_per_thread << '\n';
    std::cout << "Counter a value: " << pc.a.value.load(std::memory_order_relaxed) << '\n';
    std::cout << "Counter b value: " << pc.b.value.load(std::memory_order_relaxed) << '\n';
    std::cout << "Elapsed time(ms): " << std::chrono::duration_cast<std::chrono::milliseconds>(time) << '\n';
}

void runUnpadded() {
    UnpaddedCounters uc;

    auto start = std::chrono::steady_clock::now();

    std::thread t1([&]() {
        for (std::size_t i = 0; i < iterations_per_thread; ++i) {
            uc.a.fetch_add(1,std::memory_order_relaxed);
        }
    });

    std::thread t2([&]() {
        for (std::size_t i = 0; i < iterations_per_thread; ++i) {
            uc.b.fetch_add(1,std::memory_order_relaxed);
        }
    });

    t1.join();
    t2.join();

    auto end = std::chrono::steady_clock::now();
    auto time = end - start;
    std::cout << "=== UnpaddedCounters ===\n";
    std::cout << "Iteration per thread: " << iterations_per_thread << '\n';
    std::cout << "Counter a value: " << uc.a.load(std::memory_order_relaxed) << '\n';
    std::cout << "Counter b value: " << uc.b.load(std::memory_order_relaxed) << '\n';
    std::cout << "Elapsed time(ms): " << std::chrono::duration_cast<std::chrono::milliseconds>(time) << '\n';
}

int main() {
    runPadded();
    runUnpadded();
}