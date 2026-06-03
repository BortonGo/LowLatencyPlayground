#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <atomic>
#include <vector>
#include <utility>
#include <string_view>

constexpr std::size_t iteration_per_thread = 100'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(iteration_per_thread)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "counter = " << cnt << '\n';
    std::cout << "elapsed(ns) = " << std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed) << '\n';
    std::cout << "throughput(ops/sec) = " << throughput << '\n';
}

void run_single_thread_cnt(std::string_view name) {
    std::uint64_t cnt = 0;
    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < iteration_per_thread; ++i) {
        ++cnt;
    }
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, cnt);
}

void run_single_thread_atomic_cnt(std::string_view name, std::memory_order order) {
    std::atomic<std::uint64_t> cnt = 0;
    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < iteration_per_thread; ++i) {
        cnt.fetch_add(1, order);
    }
    const auto END = std::chrono::steady_clock::now();
    const auto counter = cnt.load();
    printStats(name, START, END, counter);
}

void shared_atomic_cnt(std::string_view name, std::size_t cnt_threads, std::memory_order order) {
    std::atomic<std::uint64_t> cnt = 0;
    std::vector<std::thread> workers;
    workers.reserve(cnt_threads);
    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        std::thread t([&]() {
            for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                cnt.fetch_add(1, order);
            }
        });
        workers.push_back(std::move(t));
    }
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        workers[i].join();
    }
    const auto END = std::chrono::steady_clock::now();
    const auto counter = cnt.load();
    printStats(name, START, END, counter);
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_single_thread_cnt("PLAIN CNT SINGLE THREAD");
    printModulo();
    run_single_thread_atomic_cnt("ATOMIC RELAXED SINGLE THREAD", std::memory_order_relaxed);
    std::cout << '\n';
    run_single_thread_atomic_cnt("ATOMIC SEQ_CST SINGLE THREAD", std::memory_order_seq_cst);
    printModulo();
    shared_atomic_cnt("ATOMIC RELAXED 2 THREADS", 2, std::memory_order_relaxed);
    std::cout << '\n';
    shared_atomic_cnt("ATOMIC SEQ_CST 2 THREADS", 2, std::memory_order_seq_cst);
    printModulo();
    shared_atomic_cnt("ATOMIC RELAXED 4 THREADS", 4, std::memory_order_relaxed);
    std::cout << '\n';
    shared_atomic_cnt("ATOMIC SEQ_CST 4 THREADS", 4, std::memory_order_seq_cst);
    return 0;
}