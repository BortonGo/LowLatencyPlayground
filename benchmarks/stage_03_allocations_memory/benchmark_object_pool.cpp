#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include "llp/benchmark_timer.hpp"
#include "llp/object_pool.hpp"

constexpr std::size_t pool_capacity = 1024;

llp::BenchmarkConfig config{
    .warmup_iterations = 10'000,
    .measured_iterations = 100'000
};

struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t checksum = 0;
    std::size_t available_after = 0;
};

struct Message {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t side;
    std::uint8_t type;
};

void fill_message(Message& message, std::uint64_t sequence) {
    message.timestamp = sequence%110;
    message.order_id = sequence%133;
    message.price = sequence%121;
    message.quantity = sequence%105;
    message.side = (sequence%2 == 0);
    message.type = sequence%5;
}

[[gnu::noinline]] Message* create_message() {
    return new Message{};
}

[[gnu::noinline]] void destroy_message(Message* message) {
    delete message;
}

BenchmarkResult run_new_del() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;

    std::uint64_t checksum = 0;
    std::uint64_t sequence = 0;
    result.stats = timer.run([&]() {
        Message* message = create_message();
        fill_message(*message, sequence++);
        checksum += message->price;
        checksum += message->quantity;
        destroy_message(message);
    });
    result.checksum = checksum;
    return result;
}

BenchmarkResult run_pool() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    llp::ObjectPool<Message> pool(pool_capacity);
    std::uint64_t checksum = 0;
    std::uint64_t sequence = 0;
    result.stats = timer.run([&]() {
        Message* message = pool.acquire();
        fill_message(*message, sequence++);
        checksum += message->price;
        checksum += message->quantity;
        pool.release(message);
    });
    result.checksum = checksum;
    result.available_after = pool.available();
    return result;
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

int main() {
    auto new_del = run_new_del();
    auto pool = run_pool();
    print_stats("=== NEW_DELETE ===", new_del.stats);
    std::cout << "checksum: " << new_del.checksum << '\n';
    std::cout << '\n';
    print_stats("=== OBJECT_POOL ===", pool.stats);
    std::cout << "checksum: " << pool.checksum << '\n';
    std::cout << "available after: " << pool.available_after << '\n';
    return 0;
}