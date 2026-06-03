#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include "llp/benchmark_timer.hpp"

llp::BenchmarkConfig config{
.warmup_iterations = 10'000,
.measured_iterations = 100'000
};

struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t checkSum;
};

struct Message {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t side;
    std::uint8_t type;

    void set(std::uint64_t sequence) {
        timestamp = sequence%110;
        order_id = sequence%133;
        price = sequence%121;
        quantity = sequence%105;
        side = (sequence%2 == 0);
        type = sequence%5;
    }
};

void printStats(std::string_view name, const llp::LatencyStats& stats) {
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

[[gnu::noinline]] Message* create_message() {
    return new Message{};
}

[[gnu::noinline]] void destroy_message(Message* message) {
    delete message;
}

BenchmarkResult runNewDel() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;

    std::uint64_t checkSum = 0;
    std::uint64_t sequence = 0;
    result.stats = timer.run([&]() {
        auto* message = create_message();
        message->set(sequence++);
        checkSum += message->price;
        checkSum += message->quantity;
        destroy_message(message);
    });
    result.checkSum = checkSum;
    return result;
}

BenchmarkResult runReuse() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    Message message{};
    std::uint64_t checkSum = 0;
    std::uint64_t sequence = 0;
    result.stats = timer.run([&]() {
        message.set(sequence++);
        checkSum += message.price;
        checkSum += message.quantity;
    });
    result.checkSum = checkSum;
    return result;
}

int main() {
    auto new_del = runNewDel();
    auto reuse = runReuse();
    printStats("=== NEW_DELETE ===", new_del.stats);
    std::cout << "checksum: " << new_del.checkSum << '\n';
    std::cout << '\n';
    printStats("=== REUSE_OBJECT ===", reuse.stats);
    std::cout << "checksum: " << reuse.checkSum << '\n';
    return 0;
}