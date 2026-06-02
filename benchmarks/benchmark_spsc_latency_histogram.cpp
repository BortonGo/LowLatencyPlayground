#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <vector>
#include <chrono>
#include "llp/latency_stats.hpp"
#include "llp/spsc_queue.hpp"

constexpr std::size_t message_count = 1'000'000;
constexpr std::size_t buffer_capacity = 1024;

struct TimedMessage {
    std::uint64_t sequence;
    std::chrono::steady_clock::time_point sent_at;
};

void printStats(const llp::LatencyStats& stats) {
    std::cout << "Count: " << stats.count() << '\n';
    std::cout << "Min: " << stats.min() << '\n';
    std::cout << "Max: " << stats.max() << '\n';
    std::cout << "Mean: " << stats.mean() << '\n';
    std::cout << "Median: " << stats.median() << '\n';
    std::cout << "p95: " << stats.percentile(95.0) << '\n';
    std::cout << "p99: " << stats.percentile(99.0) << '\n';
    std::cout << "p99.9: " << stats.percentile(99.9) << '\n';
    std::cout << "p99.99: " << stats.percentile(99.99) << '\n';
    std::cout << "p99.999: " << stats.percentile(99.999) << '\n';
}

void run() {
    std::uint64_t checksum = 0;
    llp::LatencyStats stats;
    llp::SPSCQueue<TimedMessage> q(buffer_capacity);
    auto START = std::chrono::steady_clock::now();
    std::thread t1([&]() {
        for (std::size_t i = 0; i < message_count; ++i) {
            TimedMessage msg{};
            msg.sequence = i;
            do {
                msg.sent_at = std::chrono::steady_clock::now();
            } while (!q.push(msg));
        }
    });
    std::thread t2([&]() {
        for (std::size_t i = 0; i < message_count; ++i) {
            TimedMessage m{};
            while (!q.pop(m)) {
            }
            auto end = std::chrono::steady_clock::now();
            stats.add_sample(end - m.sent_at);
            checksum += m.sequence;
        }
    });
    t1.join();
    t2.join();
    auto END = std::chrono::steady_clock::now();
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(message_count)/elapsed_seconds;
    std::cout << "=== SPSC QUEUE ===" << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed(ns) = " << std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed) << '\n';
    std::cout << "throughput(msg/sec) = " << throughput << '\n';
    printStats(stats);
}

int main() {
    run();
    return 0;
}

