#include "llp/benchmark_timer.hpp"
#include "gtest/gtest.h"

TEST(BenchmarkTimerTest, RecordsOnlyMeasuredIterations) {
    std::size_t calls = 0;
    llp::BenchmarkTimer timer({.warmup_iterations = 3,
                               .measured_iterations = 5});

    auto stats = timer.run([&] { ++calls; });

    EXPECT_EQ(calls, 8u);
    EXPECT_EQ(stats.count(), 5u);
}



