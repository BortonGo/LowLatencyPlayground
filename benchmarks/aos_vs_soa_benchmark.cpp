#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include "llp/benchmark_timer.hpp"

constexpr std::size_t record_count = 1'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 20,
    .measured_iterations = 200,
};

struct RecordAoS {
    std::uint64_t timestamp;
    std::uint64_t order_id;
    std::uint32_t price;
    std::uint32_t quantity;
    bool active;
    bool is_bid;
};

struct RecordsSoA {
    std::vector<std::uint64_t> timestamps;
    std::vector<std::uint64_t> order_ids;
    std::vector<std::uint32_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<std::uint8_t> active;
    std::vector<std::uint8_t> is_bid;

    void reserve(std::size_t sz) {
        prices.reserve(sz);
        timestamps.reserve(sz);
        active.reserve(sz);
        order_ids.reserve(sz);
        quantities.reserve(sz);
        is_bid.reserve(sz);
    }

    void push_back(std::size_t i) {
        timestamps.push_back(i%1000);
        order_ids.push_back(i%1000);
        prices.push_back((i*2)%10);
        quantities.push_back((i*3)%10);
        active.push_back((i%2 == 0));
        is_bid.push_back((i%2 != 0));
    }

    std::size_t size() {
        return prices.size();
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

llp::LatencyStats aos_traversal() {
    llp::BenchmarkTimer timer(config);
    llp::LatencyStats stats;
    std::vector<RecordAoS> records;
    records.reserve(record_count);
    for (std::size_t i = 0; i < record_count; ++i) {
        RecordAoS aos;
        aos.timestamp = i%1000;
        aos.order_id = i%1000;
        aos.price = (i*2)%10;
        aos.quantity = (i*3)%10;
        aos.active = (i%2 == 0);
        aos.is_bid = (i%2 != 0);
        records.push_back(aos);
    }
    std::uint64_t checksum = 0;
    stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (const auto& record : records) {
            if (record.active) {
                sum += static_cast<std::uint64_t>(record.price) * record.quantity;
            }
        }
        checksum += sum;
    });
    std::cout << "AoS checksum = " << checksum << '\n';
    return stats;
}

llp::LatencyStats soa_traversal() {
    llp::BenchmarkTimer timer(config);
    llp::LatencyStats stats;
    RecordsSoA soa;
    soa.reserve(record_count);
    for (std::size_t i = 0; i < record_count; ++i) {
        soa.push_back(i);
    }
    std::uint64_t checksum = 0;
    stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (std::size_t i = 0, sz = soa.size(); i < sz; ++i) {
            if (soa.active[i]) {
                sum += static_cast<std::uint64_t>(soa.prices[i]) * soa.quantities[i];
            }
        }
        checksum += sum;
    });
    std::cout << "SoA checksum = " << checksum << '\n';
    return stats;
}

int main() {
    std::cout << "RecordAoS sizeof: " << sizeof(RecordAoS) << '\n';
    std::cout << "RecordAoS memory: " << sizeof(RecordAoS) * record_count << '\n';
    std::cout << "RecordsSoA hot memory: "
        << (sizeof(std::uint32_t) + sizeof(std::uint32_t) + sizeof(std::uint8_t)) * record_count << '\n' << '\n';
    auto aos = aos_traversal();
    auto soa = soa_traversal();
    std::cout << '\n';
    printStats("AoS", aos);
    std::cout << '\n';
    printStats("SoA", soa);
    return 0;
}