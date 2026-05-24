#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include "llp/benchmark_timer.hpp"

struct BadLayout {
    bool active;
    std::uint64_t timestamp;
    std::uint32_t price;
    bool is_bid;
    std::uint64_t order_id;
    std::uint32_t quantity;
};

struct GoodLayout {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    bool active;
    bool is_bid;
};

void printGoodLayoutInfo() {
    std::cout << "=== GOOD LAYOUT ===\n";
    std::cout << "Sizeof: " << sizeof(GoodLayout) << '\n';
    std::cout << "Alignof: " << alignof(GoodLayout) << '\n';
    std::cout << "timestamp: " << offsetof(GoodLayout, timestamp) << '\n';
    std::cout << "order_id: " << offsetof(GoodLayout, order_id) << '\n';
    std::cout << "price: " << offsetof(GoodLayout, price) << '\n';
    std::cout << "quantity: " << offsetof(GoodLayout, quantity) << '\n';
    std::cout << "active: " << offsetof(GoodLayout, active) << '\n';
    std::cout << "is_bid: " << offsetof(GoodLayout, is_bid) << '\n';
}

void printBadLayoutInfo() {
    std::cout << "=== BAD LAYOUT ===\n";
    std::cout << "Sizeof: " << sizeof(BadLayout) << '\n';
    std::cout << "Alignof: " << alignof(BadLayout) << '\n';
    std::cout << "active: " << offsetof(BadLayout, active) << '\n';
    std::cout << "timestamp: " << offsetof(BadLayout, timestamp) << '\n';
    std::cout << "price: " << offsetof(BadLayout, price) << '\n';
    std::cout << "is_bid: " << offsetof(BadLayout, is_bid) << '\n';
    std::cout << "order_id: " << offsetof(BadLayout, order_id) << '\n';
    std::cout << "quantity: " << offsetof(BadLayout, quantity) << '\n';
}

constexpr std::size_t record_count = 1'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 20,
    .measured_iterations = 200,
};

llp::LatencyStats good_traversal() {
    llp::BenchmarkTimer timer(config);
    llp::LatencyStats stats;
    std::vector<GoodLayout> records;
    records.reserve(record_count);
    for (std::size_t i = 0; i < record_count; ++i) {
        GoodLayout l;
        l.timestamp = i%1000;
        l.order_id = i%1000;
        l.price = (i*2)/1000;
        l.quantity = (i*3)/1000;
        l.active = (i%2 == 0);
        l.is_bid = (i%2 != 0);
        records.push_back(l);
    }
    std::uint64_t checksum = 0;
    stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (const auto& record : records) {
            if (record.active) {
                sum += record.timestamp;
                sum += record.order_id;
                sum += record.price;
                sum += record.quantity;
            }
        }
        checksum += sum;
    });
    std::cout << "GoodLayout checksum = " << checksum << '\n';
    return stats;
}

llp::LatencyStats bad_traversal() {
    llp::BenchmarkTimer timer(config);
    llp::LatencyStats stats;
    std::vector<BadLayout> records;
    records.reserve(record_count);
    for (std::size_t i = 0; i < record_count; ++i) {
        BadLayout l;
        l.timestamp = i%1000;
        l.order_id = i%1000;
        l.price = (i*2)/1000;
        l.quantity = (i*3)/1000;
        l.active = (i%2 == 0);
        l.is_bid = (i%2 != 0);
        records.push_back(l);
    }
    std::uint64_t checksum = 0;
    stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (const auto& record : records) {
            if (record.active) {
                sum += record.timestamp;
                sum += record.order_id;
                sum += record.price;
                sum += record.quantity;
            }
        }
        checksum += sum;
    });
    std::cout << "BadLayout checksum = " << checksum << '\n';
    return stats;
}

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

int main() {
    printBadLayoutInfo();
    printGoodLayoutInfo();

    auto bad = bad_traversal();
    auto good = good_traversal();

    printStats("=== BAD LAYOUT TRAVERSAL", bad);
    printStats("=== GOOD LAYOUT TRAVERSAL", good);

    return 0;
}



