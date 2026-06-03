#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <mutex>
#include <vector>
#include <utility>
#include <string_view>
#include <llp/spin_lock.hpp>

constexpr std::size_t iteration_per_thread = 100'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(iteration_per_thread)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "counter = " << cnt << '\n';
    std::cout << "elapsed(ms) = " << std::chrono::duration_cast<std::chrono::milliseconds>(elapsed) << '\n';
    std::cout << "throughput(ops/sec) = " << throughput << '\n';
}


void run_case_mutex(std::string_view name, std::size_t cnt_threads, bool long_work) {
    std::uint64_t cnt = 0;
    std::mutex m;
    std::vector<std::thread> workers;
    workers.reserve(cnt_threads);
    const auto START = std::chrono::steady_clock::now();
    if (long_work) {
        for (std::size_t i = 0; i < cnt_threads; ++i) {
            std::thread t([&]() {
                for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                    std::lock_guard<std::mutex> lck(m);
                    for (std::size_t k = 0; k < 100; ++k) {
                        if (k % 2 == 0) ++cnt;
                    }
                }
            });
            workers.push_back(std::move(t));
        }
    } else {
        for (std::size_t i = 0; i < cnt_threads; ++i) {
            std::thread t([&]() {
                for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                    std::lock_guard<std::mutex> lck(m);
                    ++cnt;
                }
            });
            workers.push_back(std::move(t));
        }
    }
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        workers[i].join();
    }
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, cnt);
}

void run_case_spin_lock(std::string_view name, std::size_t cnt_threads, bool long_work) {
    std::uint64_t cnt = 0;
    llp::SpinLock lock;
    std::vector<std::thread> workers;
    workers.reserve(cnt_threads);
    const auto START = std::chrono::steady_clock::now();
    if (long_work) {
        for (std::size_t i = 0; i < cnt_threads; ++i) {
            std::thread t([&]() {
                for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                    lock.lock();
                    for (std::size_t k = 0; k < 100; ++k) {
                        if (k % 2 == 0) ++cnt;
                    }
                    lock.unlock();
                }
            });
            workers.push_back(std::move(t));
        }
    } else {
        for (std::size_t i = 0; i < cnt_threads; ++i) {
            std::thread t([&]() {
                for (std::size_t j = 0; j < iteration_per_thread; ++j) {
                    lock.lock();
                    ++cnt;
                    lock.unlock();
                }
            });
            workers.push_back(std::move(t));
        }
    }
    for (std::size_t i = 0; i < cnt_threads; ++i) {
        workers[i].join();
    }
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, cnt);
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_case_mutex("MUTEX SINGLE THREAD SHORT PATH", 1, false);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK SINGLE THREAD SHORT PATH", 1, false);
    printModulo();
    run_case_mutex("MUTEX SINGLE THREAD LONG PATH", 1, true);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK SINGLE THREAD LONG PATH", 1, true);
    printModulo();
    run_case_mutex("MUTEX 2 THREADS SHORT PATH", 2, false);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK 2 THREADS SHORT PATH", 2, false);
    printModulo();
    run_case_mutex("MUTEX 2 THREADS LONG PATH", 2, true);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK 2 THREADS LONG PATH", 2, true);
    printModulo();
    run_case_mutex("MUTEX 4 THREADS SHORT PATH", 4, false);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK 4 THREADS SHORT PATH", 4, false);
    printModulo();
    run_case_mutex("MUTEX 4 THREADS LONG PATH", 4, true);
    std::cout << '\n';
    run_case_spin_lock("SPIN LOCK 4 THREADS LONG PATH", 4, true);
    printModulo();

    return 0;
}