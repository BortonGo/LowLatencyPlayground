
#include "llp/order.hpp"
#include "llp/matching_engine.hpp"
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
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, std::size_t oper_cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput_ops_sec = " << throughput << '\n';
}

void run_add_resting_only_vector(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    std::vector<llp::Trade> trades;
    trades.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders.resting.size());
}

void run_match_crossing_only_vector(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    std::vector<llp::Trade> trades;
    trades.reserve(orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    trades.clear();
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.crossing) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size());
}

void run_cancel_resting_only_vector(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    std::vector<llp::Trade> trades;
    trades.reserve(orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        if (engine.cancel(order.id)) {
            checksum += order.id;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders.resting.size());
}

void run_add_resting_only_trade_buffer_new(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade* data = new llp::Trade[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders.resting.size());
    delete[] data;
}

void run_match_crossing_only_trade_buffer_new(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade* data = new llp::Trade[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    trades.clear();
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.crossing) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size());
    delete[] data;
}

void run_cancel_resting_only_trade_buffer_new(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade* data = new llp::Trade[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        if (engine.cancel(order.id)) {
            checksum += order.id;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders.resting.size());
    delete[] data;
}


void run_add_resting_only_trade_buffer_stack(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade data[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders.resting.size());
}

void run_match_crossing_only_trade_buffer_stack(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade data[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    trades.clear();
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.crossing) {
        engine.add(order, trades);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    checksum += trades.size();
    printStats(name, start, end, checksum, orders.crossing.size());
}

void run_cancel_resting_only_trade_buffer_stack(std::string_view name) {
    auto orders = generate_resting_asks_and_crossing_buys(orders_cnt);
    llp::MatchingEngine engine;
    llp::Trade data[orders_cnt];
    llp::TradeBuffer trades(data, orders_cnt);
    for (const auto& order : orders.resting) {
        engine.add(order, trades);
    }
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        if (engine.cancel(order.id)) {
            checksum += order.id;
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

int main() {
    run_add_resting_only_vector("ADD RESTING ONLY VECTOR");
    std::cout << '\n';
    run_add_resting_only_trade_buffer_new("ADD RESTING ONLY TRADE BUFFER NEW");
    std::cout << '\n';
    run_add_resting_only_trade_buffer_stack("ADD RESTING ONLY TRADE BUFFER STACK");
    printModulo();
    run_match_crossing_only_vector("MATCH CROSSING ONLY VECTOR");
    std::cout << '\n';
    run_match_crossing_only_trade_buffer_new("MATCH CROSSING ONLY TRADE BUFFER NEW");
    std::cout << '\n';
    run_match_crossing_only_trade_buffer_stack("MATCH CROSSING ONLY TRADE BUFFER STACK");
    printModulo();
    run_cancel_resting_only_vector("CANCEL RESTING ONLY VECTOR");
    std::cout << '\n';
    run_cancel_resting_only_trade_buffer_new("CANCEL RESTING ONLY TRADE BUFFER NEW");
    std::cout << '\n';
    run_cancel_resting_only_trade_buffer_stack("CANCEL RESTING ONLY TRADE BUFFER STACK");
    return 0;
}
