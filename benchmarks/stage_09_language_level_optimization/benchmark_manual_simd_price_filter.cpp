#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>
#include "llp/benchmark_timer.hpp"

constexpr std::size_t prices_cnt = 1'000'000;

struct BenchmarkStruct {
    llp::LatencyStats stats;
    std::size_t checksum;
};

llp::BenchmarkConfig config{
    .warmup_iterations = 20,
    .measured_iterations = 200,
};

void generate_prices(std::vector<std::uint64_t>& prices, std::size_t valid_percent, std::uint64_t seed) {
    prices.clear();
    prices.reserve(prices_cnt);
    std::mt19937_64 rng{seed};
    const std::size_t valid_count = prices_cnt * valid_percent / 100;

    for (std::size_t i = 0; i < prices_cnt; ++i) {
        if (i >= valid_count) {
            prices.push_back(0);
        } else {
            prices.push_back(100 + (i % 1000));
        }
    }
    std::shuffle(prices.begin(), prices.end(), rng);
}

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, std::size_t oper_cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput_ops_sec = " << throughput << '\n';
}

#if defined(__aarch64__)
#include <arm_neon.h>
#endif

std::size_t count_prices_above_manual_neon( const std::vector<std::uint64_t>& prices, std::uint64_t threshold) {
#if defined(__aarch64__)
    std::size_t i = 0;

    const uint64x2_t limit = vdupq_n_u64(threshold);
    uint64x2_t acc0 = vdupq_n_u64(0);
    uint64x2_t acc1 = vdupq_n_u64(0);
    uint64x2_t acc2 = vdupq_n_u64(0);
    uint64x2_t acc3 = vdupq_n_u64(0);

    for (; i + 7 < prices.size(); i += 8) {

        const uint64x2_t v0 = vld1q_u64(prices.data() + i);
        const uint64x2_t v1 = vld1q_u64(prices.data() + i + 2);
        const uint64x2_t v2 = vld1q_u64(prices.data() + i + 4);
        const uint64x2_t v3 = vld1q_u64(prices.data() + i + 6);

        const uint64x2_t m0 = vcgtq_u64(v0, limit);
        const uint64x2_t m1 = vcgtq_u64(v1, limit);
        const uint64x2_t m2 = vcgtq_u64(v2, limit);
        const uint64x2_t m3 = vcgtq_u64(v3, limit);

        acc0 = vaddq_u64(acc0, vshrq_n_u64(m0, 63));
        acc1 = vaddq_u64(acc1, vshrq_n_u64(m1, 63));
        acc2 = vaddq_u64(acc2, vshrq_n_u64(m2, 63));
        acc3 = vaddq_u64(acc3, vshrq_n_u64(m3, 63));
    }

    uint64x2_t acc01 = vaddq_u64(acc0, acc1);
    uint64x2_t acc23 = vaddq_u64(acc2, acc3);
    uint64x2_t acc = vaddq_u64(acc01, acc23);

    std::size_t count = vaddvq_u64(acc);

    for (; i < prices.size(); ++i) {
        count += prices[i] > threshold;
    }

    return count;
#else
    return 0;
#endif
}

std::size_t count_prices_above_scalar(const std::vector<std::uint64_t>& prices, std::uint64_t threshold) {
    std::size_t count = 0;

#pragma clang loop vectorize(disable)
#pragma clang loop interleave(disable)
#pragma clang loop unroll(disable)
    for (std::size_t i = 0; i < prices.size(); ++i) {
        count += prices[i] > threshold;
    }

    return count;
}

std::size_t count_prices_above_auto(const std::vector<std::uint64_t>& prices, std::uint64_t threshold) {
    std::size_t count = 0;
    for (std::size_t i = 0; i < prices.size(); ++i) {
        count += prices[i] > threshold;
    }
    return count;
}


int main() {
    std::vector<std::uint64_t> prices;
    prices.reserve(prices_cnt);
    generate_prices(prices, 90, 42);

    auto scalar = count_prices_above_scalar(prices, 266);
    auto automatic = count_prices_above_auto(prices, 266);
    auto manual = count_prices_above_manual_neon(prices, 266);

    if (scalar != automatic || scalar != manual) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    const auto start_scalar = std::chrono::steady_clock::now();
    const auto checksum_scalar = count_prices_above_scalar(prices, 266);
    const auto end_scalar = std::chrono::steady_clock::now();
    printStats("SCALAR", start_scalar, end_scalar, checksum_scalar, prices.size());

    const auto start_auto = std::chrono::steady_clock::now();
    const auto checksum_auto = count_prices_above_auto(prices, 266);
    const auto end_auto = std::chrono::steady_clock::now();
    printStats("AUTO", start_auto, end_auto, checksum_auto, prices.size());

    const auto start_neon = std::chrono::steady_clock::now();
    const auto checksum_neon = count_prices_above_manual_neon(prices, 266);
    const auto end_neon = std::chrono::steady_clock::now();
    printStats("MANUAL NEON", start_neon, end_neon, checksum_neon, prices.size());

    return 0;
}
