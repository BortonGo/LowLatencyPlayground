#include "llp/benchmark_timer.hpp"
#include <iostream>
#include <string_view>
#include <vector>

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

llp::LatencyStats runWithoutReserve(const llp::BenchmarkConfig& config) {
    llp::BenchmarkTimer timer(config);
    std::vector<int> vec;
    return timer.run([&]() {vec.push_back(42);});
}

llp::LatencyStats runWithReserve(const llp::BenchmarkConfig& config) {
    llp::BenchmarkTimer timer(config);
    std::vector<int> vec;
    vec.reserve(config.warmup_iterations + config.measured_iterations);
    return timer.run([&]() {vec.push_back(42);});
}

int main() {
    llp::BenchmarkConfig config{20'000, 100'000};

    auto without_reserve = runWithoutReserve(config);
    auto with_reserve = runWithReserve(config);

    printStats("=== With reserve ===", with_reserve);
    printStats("=== Without reserve ===", without_reserve);

    return 0;
}
