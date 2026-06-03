#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <stdexcept>
#include "llp/benchmark_timer.hpp"

constexpr std::size_t value_count = 10'000'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 10,
    .measured_iterations = 100,
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

llp::LatencyStats benchmark_branch( const std::vector<std::uint64_t>& values,
        const std::vector<std::uint8_t>& flags,
        std::uint64_t& checksum) {
    if (values.size() != flags.size()) throw std::runtime_error("values and flags size mismatch");
    llp::BenchmarkTimer timer(config);
    return timer.run([&]() {
        std::uint64_t sum = 0;
        for (std::size_t i = 0, sz = values.size(); i < sz; ++i) {
            if (flags[i]) {
                sum += values[i];
            }
        }
        checksum += sum;
    });
}

void generate_values(std::vector<std::uint64_t>& values) {
    values.reserve(value_count);
    for (std::size_t i = 0; i < value_count; ++i) {
        values.push_back(i%10);
    }
}

void generate_flags(std::vector<std::uint8_t>& pred_flags, std::vector<std::uint8_t>& rand_flags) {
    pred_flags.reserve(value_count);
    rand_flags.reserve(value_count);
    std::mt19937 rng(42);
    std::bernoulli_distribution dist(0.5);
    for (std::size_t i = 0; i < value_count; ++i) {
        rand_flags.push_back(dist(rng));
        pred_flags.push_back(i%2 == 0);
    }
    std::uint64_t true_cnt_pred = 0;
    std::uint64_t true_cnt_rand = 0;
    for (auto f : pred_flags) {
        if (f) true_cnt_pred++;
    }
    for (auto f : rand_flags) {
        if (f) true_cnt_rand++;
    }
    std::cout << "true_count_predictable: " << true_cnt_pred << '\n';
    std::cout << "true_count_random: " << true_cnt_rand << '\n';
}

int main() {
    std::vector<std::uint64_t> values;
    generate_values(values);
    std::vector<std::uint8_t> pred_flags;
    std::vector<std::uint8_t> rand_flags;
    generate_flags(pred_flags, rand_flags);
    std::uint64_t checksum_pred = 0;
    std::uint64_t checksum_rand = 0;
    auto pred = benchmark_branch(values, pred_flags, checksum_pred);
    auto rand = benchmark_branch(values, rand_flags, checksum_rand);
    std::cout << '\n';
    printStats("Predictable flags", pred);
    std::cout << "checksum: " << checksum_pred << '\n';
    std::cout << '\n';
    printStats("Random flags", rand);
    std::cout << "checksum: " << checksum_rand << '\n';
    return 0;
}

