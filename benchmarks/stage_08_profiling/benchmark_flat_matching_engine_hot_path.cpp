
#include "llp/order.hpp"
#include "llp/matching_engine.hpp"
#include "llp/flat_matching_engine.hpp"
#include "llp/latency_stats.hpp"
#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <string_view>

constexpr std::size_t orders_cnt = 30'000'000;

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
        ask.price = 100 + (i % 1000);
        ask.quantity = 10;

        result.resting.push_back(ask);
    }
    for (std::size_t i = 0; i < count; ++i) {
        llp::Order buy{};
        buy.id = next_id++;
        buy.side = llp::OrderSide::Buy;
        buy.price = 100 + (i % 1000);
        buy.quantity = 10;

        result.crossing.push_back(buy);
    }
    return result;
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

void run_add_resting_only(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::MatchingEngine engine_warmup;
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
    std::uint64_t checksum = 0;

    for (int i = 0; i < 10000; ++i) {
        engine_warmup.add(orders.resting[i], trades);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_match_crossing_only(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::MatchingEngine engine_warmup;
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
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

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.crossing) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size());
}

void run_cancel_resting_only(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::MatchingEngine engine_warmup;
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
    std::uint64_t checksum = 0;
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }

    for (const auto& order : orders.resting) {
        engine_warmup.add(order, trades);
    }
    for (int i = 0; i < 10000; ++i) {
        engine_warmup.cancel(orders.resting[i].id);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        if (engine.cancel(order.id)) {
            checksum += order.id;
            continue;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_add_resting_only_flat_engine(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::FlatMatchingEngine engine(100, 1100);
    llp::FlatMatchingEngine engine_warmup(100, 1100);
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
    std::uint64_t checksum = 0;

    for (int i = 0; i < 10000; ++i) {
        engine_warmup.add(orders.resting[i], trades);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_match_crossing_only_flat_engine(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::FlatMatchingEngine engine(100, 1100);
    llp::FlatMatchingEngine engine_warmup(100, 1100);
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
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

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.crossing) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size());
}

void run_cancel_resting_only_flat_engine(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::FlatMatchingEngine engine(100, 1100);
    llp::FlatMatchingEngine engine_warmup(100, 1100);
    engine.reserve(orders_cnt);
    engine_warmup.reserve(orders_cnt);
    std::vector<llp::Trade> data(orders_cnt);
    llp::TradeBuffer trades(data.data(), data.size());
    std::uint64_t checksum = 0;
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }

    for (const auto& order : orders.resting) {
        engine_warmup.add(order, trades);
    }
    for (int i = 0; i < 10000; ++i) {
        engine_warmup.cancel(orders.resting[i].id);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        if (engine.cancel(order.id)) {
            checksum += order.id;
            continue;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0]
                  << " current-add|flat-add|current-match|flat-match|current-cancel|flat-cancel\n";
        return 1;
    }

    std::string_view command = argv[1];
    if (command == "current-add") {
        run_add_resting_only("ADD RESTING MATCHING ENGINE");
    } else if (command == "flat-add") {
        run_add_resting_only_flat_engine("ADD RESTING FLAT MATCHING ENGINE");
    } else if (command == "current-match") {
        run_match_crossing_only("MATCH CROSSING MATCHING ENGINE");
    } else if (command == "flat-match") {
        run_match_crossing_only_flat_engine("MATCH CROSSING FLAT MATCHING ENGINE");
    } else if (command == "current-cancel") {
        run_cancel_resting_only("CANCEL RESTING MATCHING ENGINE");
    } else if (command == "flat-cancel") {
        run_cancel_resting_only_flat_engine("CANCEL RESTING FLAT MATCHING ENGINE");
    } else {
        std::cerr << "Unknown scenario: " << command << '\n';
        return 1;
    }
    return 0;
}
