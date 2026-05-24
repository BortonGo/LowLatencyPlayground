#include "llp/benchmark_timer.hpp"
#include <iostream>
#include <string_view>
#include <vector>
#include <list>

constexpr std::size_t container_size = 1'000'000;

struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t ckeckSum;
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

BenchmarkResult runVector(const llp::BenchmarkConfig& config) {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::vector<std::uint64_t> vec;
    vec.reserve(container_size);
    for (std::size_t i = 0; i < container_size; ++i) {
        vec.push_back(static_cast<std::uint64_t>(i));
    }
    std::uint64_t checkSum = 0;
    result.stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (auto x : vec) {
            sum += x;
        }
        checkSum += sum;
    });
    result.ckeckSum = checkSum;
    return result;
}

BenchmarkResult runList(const llp::BenchmarkConfig& config) {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::list<std::uint64_t> l;
    for (std::size_t i = 0; i < container_size; ++i) {
        l.push_back(static_cast<std::uint64_t>(i));
    }
    std::uint64_t checkSum = 0;
    result.stats = timer.run([&]() {
        std::uint64_t sum = 0;
        for (auto x : l) {
            sum += x;
        }
        checkSum += sum;
    });
    result.ckeckSum = checkSum;
    return result;
}

int main() {
    llp::BenchmarkConfig config{100, 1'000};

    auto run_vector = runVector(config);
    auto run_list = runList(config);

    printStats("=== Vector ===", run_vector.stats);
    printStats("=== List ===", run_list.stats);

    return 0;
}