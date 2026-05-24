#include "llp/latency_stats.hpp"
#include "gtest/gtest.h"

TEST(LatencyStatsTest, CountsSamples) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.count(), 2u);
    EXPECT_FALSE(stats.empty());
}

TEST(LatencyStatsTest, ComputesMinMaxMean) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{30});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.min(), std::chrono::nanoseconds{10});
    EXPECT_EQ(stats.max(), std::chrono::nanoseconds{30});
    EXPECT_EQ(stats.mean(), std::chrono::nanoseconds{20});
}

TEST(LatencyStatsTest, ComputesMedianForOddNumberOfSamples) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{30});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.median(), std::chrono::nanoseconds{20});
}

TEST(LatencyStatsTest, ThrowsForEmptyStats) {
    llp::LatencyStats stats;

    EXPECT_THROW(stats.min(), std::runtime_error);
    EXPECT_THROW(stats.max(), std::runtime_error);
    EXPECT_THROW(stats.mean(), std::runtime_error);
    EXPECT_THROW(stats.median(), std::runtime_error);
    EXPECT_THROW(stats.percentile(99.0), std::runtime_error);
}

TEST(LatencyStatsTest, ComputesMedianForEvenNumberOfSamples) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{40});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{30});
    stats.add_sample(std::chrono::nanoseconds{20});

    EXPECT_EQ(stats.median(), std::chrono::nanoseconds{25});
}

TEST(LatencyStatsTest, ComputesPercentiles) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{50});
    stats.add_sample(std::chrono::nanoseconds{10});
    stats.add_sample(std::chrono::nanoseconds{40});
    stats.add_sample(std::chrono::nanoseconds{20});
    stats.add_sample(std::chrono::nanoseconds{30});

    EXPECT_EQ(stats.percentile(0.0), std::chrono::nanoseconds{10});
    EXPECT_EQ(stats.percentile(50.0), std::chrono::nanoseconds{30});
    EXPECT_EQ(stats.percentile(100.0), std::chrono::nanoseconds{50});
}

TEST(LatencyStatsTest, ThrowsForInvalidPercentile) {
    llp::LatencyStats stats;
    stats.add_sample(std::chrono::nanoseconds{10});

    EXPECT_THROW(stats.percentile(-1.0), std::out_of_range);
    EXPECT_THROW(stats.percentile(101.0), std::out_of_range);
}

