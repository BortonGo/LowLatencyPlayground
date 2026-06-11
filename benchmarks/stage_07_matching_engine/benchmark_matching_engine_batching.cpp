
#include "llp/order.hpp"
#include "llp/matching_engine.hpp"
#include "llp/latency_stats.hpp"
#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <string_view>

constexpr std::size_t orders_cnt = 100'000;

struct MatchingBenchmarkOrders {
    std::vector<llp::Order> resting;
    std::vector<llp::Order> crossing;
};

MatchingBenchmarkOrders generate_resting_asks_and_crossing_buys(std::size_t count) {
    MatchingBenchmarkOrders result;
    result.resting.reserve(count);
    result.crossing.reserve(count);
    std::uint64_t next_id = 1;
    for (std::size_t i = 0; i < count; ++i) {
        llp::Order ask{};
        ask.id = next_id++;
        ask.side = llp::OrderSide::Sell;
        ask.price = 100 + (i % 10);
        ask.quantity = 10;

        result.resting.push_back(ask);
    }
    for (std::size_t i = 0; i < count; ++i) {
        llp::Order buy{};
        buy.id = next_id++;
        buy.side = llp::OrderSide::Buy;
        buy.price = 109;
        buy.quantity = 10;

        result.crossing.push_back(buy);
    }
    return result;
}

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum,
    std::size_t oper_cnt, llp::LatencyStats& stats, std::size_t batch_sz, std::size_t batch_count) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "batching_size = " << batch_sz << '\n';
    std::cout << "batches_count = " << batch_count << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput_ops_sec = " << throughput << '\n';
    std::cout << "estimated_per_order_latency = " << stats.mean() / batch_sz;
    std::cout << "BATCH_LATENCY:" << '\n';
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

void run_match_crossing_only(std::string_view name, std::size_t batching_size) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::LatencyStats stats;
    stats.reserve(orders_cnt);
    llp::MatchingEngine engine;
    llp::MatchingEngine engine_warmup;
    llp::Trade data[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    std::uint64_t checksum = 0;

    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    trades.clear();

    for (const auto& order : orders.resting) {
        engine_warmup.add(order, trades);
    }
    trades.clear();

    for (int i = 0; i < 10000; ++i) {
        engine_warmup.add(orders.crossing[i], trades);
    }
    trades.clear();
     std::size_t bcnt = 0;
    std::size_t batch_count = 0;
    const auto start = std::chrono::steady_clock::now();

    for (std::size_t i = 0; i < orders_cnt; i += batching_size) {
        ++bcnt;
        const auto start_local = std::chrono::steady_clock::now();
        while (batch_count < batching_size && i + batch_count < orders_cnt) {
            auto order = orders.crossing[i+batch_count];
            if (!engine.add(order, trades)) {
                break;
            }
            checksum += order.price + order.quantity + order.id;
            ++batch_count;
        }
        const auto end_local = std::chrono::steady_clock::now();
        stats.add_sample(end_local-start_local);
        batch_count = 0;
    }

    const auto end = std::chrono::steady_clock::now();
    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size(), stats, batching_size, bcnt);
}


void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_match_crossing_only("MATCH CROSSING SZ = 1", 1);
    printModulo();
    run_match_crossing_only("MATCH CROSSING SZ = 4", 4);
    printModulo();
    run_match_crossing_only("MATCH CROSSING SZ = 16", 16);
    printModulo();
    run_match_crossing_only("MATCH CROSSING SZ = 64", 64);
    return 0;
}

