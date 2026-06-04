#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <atomic>
#include <vector>
#include <utility>
#include <string_view>

constexpr std::size_t iteration_per_thread = 1'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t cnt, std::uint64_t failed, std::size_t oper_cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "counter = " << cnt << '\n';
    std::cout << "failed = " << failed << '\n';
    std::cout << "elapsed(mcs) = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput(ops/sec) = " << throughput << '\n';
}

void shared_fetch_add_cnt(std::string_view name, std::size_t cnt_threads) {
    std::atomic<std::uint64_t> cnt = 0;
    std::vector<std::thread> workers;
    workers.reserve(cnt_threads);
    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        std::thread t([&]() {
            for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                cnt.fetch_add(1, std::memory_order_relaxed);
            }
        });
        workers.push_back(std::move(t));
    }
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        workers[i].join();
    }
    const auto END = std::chrono::steady_clock::now();
    const auto counter = cnt.load(std::memory_order_relaxed);
    printStats(name, START, END, counter, 0, cnt_threads * iteration_per_thread);
}

void shared_cas_cnt(std::string_view name, std::size_t cnt_threads) {
    std::atomic<std::uint64_t> cnt = 0;
    std::atomic<std::uint64_t> failed = 0;
    std::vector<std::thread> workers;
    workers.reserve(cnt_threads);
    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        std::thread t([&]() {
            for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                std::uint64_t expected = cnt.load(std::memory_order_relaxed);
                while (!cnt.compare_exchange_weak(expected, expected + 1,
                            std::memory_order_relaxed, std::memory_order_relaxed)) {
                    failed.fetch_add(1, std::memory_order_relaxed);
                }
            }
        });
        workers.push_back(std::move(t));
    }
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        workers[i].join();
    }
    const auto END = std::chrono::steady_clock::now();
    const auto counter = cnt.load(std::memory_order_relaxed);
    const auto fail = failed.load(std::memory_order_relaxed);
    printStats(name, START, END, counter, fail ,cnt_threads * iteration_per_thread);
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    shared_fetch_add_cnt("FETCH_ADD 1 THREAD", 1);
    std::cout << '\n';
    shared_cas_cnt("CAS 1 THREAD", 1);
    printModulo();
    shared_fetch_add_cnt("FETCH_ADD 2 THREAD", 2);
    std::cout << '\n';
    shared_cas_cnt("CAS 2 THREAD", 2);
    printModulo();
    shared_fetch_add_cnt("FETCH_ADD 4 THREAD", 4);
    std::cout << '\n';
    shared_cas_cnt("CAS 4 THREAD", 4);
    printModulo();
    return 0;
}
