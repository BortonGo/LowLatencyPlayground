#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <queue>
#include <vector>
#include "llp/benchmark_timer.hpp"
#include "llp/ring_buffer.hpp"

constexpr std::size_t message_count = 1024;
constexpr std::size_t buffer_capacity = 1024;

llp::BenchmarkConfig config{
    .warmup_iterations = 1'000,
    .measured_iterations = 10'000,
};

struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t checksum = 0;
};

struct Message {
    std::uint64_t sequence;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t type;
};

void fill(std::vector<Message>& vec) {
    for (std::size_t i = 0; i < message_count; ++i) {
        Message msg{};
        msg.sequence = i;
        msg.price = static_cast<std::uint32_t>(100 + (i % 100));
        msg.quantity = static_cast<std::uint32_t>(1 + (i % 50));
        msg.type = (i % 4 == 0) ? 1 : 0;
        vec.push_back(msg);
    }
}

void print_stats(std::string_view name, const llp::LatencyStats& stats) {
    std::cout << name << '\n';
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

BenchmarkResult run_queue() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::uint64_t checksum = 0;
    std::vector<Message> input_buf;
    input_buf.reserve(message_count);
    fill(input_buf);
    std::queue<Message> q;
    result.stats = timer.run([&]() {
        for (auto& m : input_buf) {
            q.push(m);
        }
        while (!q.empty()) {
            auto m = q.front();
            q.pop();
            checksum += m.sequence + m.price + m.quantity + m.type;
        }
    });
    result.checksum = checksum;
    return result;
}

BenchmarkResult run_ring_buffer() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::uint64_t checksum = 0;
    std::vector<Message> input_buf;
    input_buf.reserve(message_count);
    fill(input_buf);
    llp::RingBuffer<Message> rb(buffer_capacity);
    result.stats = timer.run([&]() {
        for (auto& m : input_buf) {
            rb.push(m);
        }
        while (!rb.empty()) {
            Message m{};
            rb.pop(m);
            checksum += m.sequence + m.price + m.quantity + m.type;
        }
    });
    result.checksum = checksum;
    return result;
}

int main() {
    auto queue = run_queue();
    auto ring_buffer = run_ring_buffer();

    print_stats("=== QUEUE ===", queue.stats);
    std::cout << "checksum: " << queue.checksum << '\n';
    std::cout << '\n';
    print_stats("=== RING BUFFER ===", ring_buffer.stats);
    std::cout << "checksum: " << ring_buffer.checksum << '\n';

    return 0;
}

