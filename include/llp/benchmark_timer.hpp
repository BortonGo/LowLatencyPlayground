#pragma once
#include <chrono>
#include "latency_stats.hpp"

namespace llp {
    struct BenchmarkConfig {
        std::size_t warmup_iterations = 1'000;
        std::size_t measured_iterations = 10'000;
    };

    class BenchmarkTimer {
        BenchmarkConfig conf;
    public:
        explicit BenchmarkTimer(const BenchmarkConfig& config = {}) : conf(config) {}

        template <typename Func>
        LatencyStats run(Func&& func) const {
            LatencyStats stats;
            stats.reserve(conf.measured_iterations);
            for (std::size_t i = 0; i < conf.warmup_iterations; ++i) {
                func();
            }
            for (std::size_t i = 0; i < conf.measured_iterations; ++i) {
                auto start = std::chrono::steady_clock::now();
                func();
                auto end = std::chrono::steady_clock::now();
                auto res = end - start;
                stats.add_sample(res);
            }
            return stats;
        }
    };
}