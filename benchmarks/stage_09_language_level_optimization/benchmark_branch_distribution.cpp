#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <algorithm>
#include <random>
#include <string_view>
#include "llp/order.hpp"

constexpr std::uint64_t orders_cnt = 1'000'000;

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

void generate_orders(std::vector<llp::Order>& orders, std::size_t valid_percent, std::uint64_t seed) {
    orders.clear();
    orders.reserve(orders_cnt);
    std::mt19937_64 rng{seed};
    const std::size_t valid_count = orders_cnt * valid_percent / 100;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order{};
        order.id = i + 1;
        order.price = 100 + (i % 1000);
        order.quantity = 1 + (i % 100);
        order.side = (i % 2 == 0) ? llp::OrderSide::Buy : llp::OrderSide::Sell;
        if (i >= valid_count) {
            if ((rng() & 1U) == 0U) {
                order.id = 0;
            } else {
                order.price = 0;
            }
        }
        orders.push_back(order);
    }
    std::shuffle(orders.begin(), orders.end(), rng);
}

std::uint64_t run_bench_baseline(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::uint64_t sum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders) {
        if (order.id > 0 && order.price > 0) {
            sum += order.price;
            checksum += order.id;
        } else {
            checksum += order.quantity;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return sum;
}

std::uint64_t run_bench_good_hint(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::uint64_t sum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders) {
        if (order.id > 0 && order.price > 0) [[likely]] {
            sum += order.price;
            checksum += order.id;
        } else [[unlikely]] {
            checksum += order.quantity;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return sum;
}

std::uint64_t run_bench_bad_hint(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::uint64_t sum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders) {
        if (order.id > 0 && order.price > 0) [[unlikely]] {
            sum += order.price;
            checksum += order.id;
        } else [[likely]] {
            checksum += order.quantity;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return sum;
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    std::vector<llp::Order> orders_99;
    orders_99.reserve(orders_cnt);

    std::vector<llp::Order> orders_90;
    orders_90.reserve(orders_cnt);

    std::vector<llp::Order> orders_50;
    orders_50.reserve(orders_cnt);

    std::vector<llp::Order> orders_random;
    orders_random.reserve(orders_cnt);

    generate_orders(orders_99, 99,42);
    generate_orders(orders_90, 90,42);
    generate_orders(orders_50, 50,42);
    generate_orders(orders_random, 50, 12345);


    run_bench_baseline("99% VALID BASELINE", orders_99);
    std::cout << '\n';
    run_bench_good_hint("99% VALID GOOD HINT", orders_99);
    std::cout << '\n';
    run_bench_bad_hint("99% VALID BAD HINT", orders_99);
    printModulo();

    run_bench_baseline("90% VALID BASELINE", orders_90);
    std::cout << '\n';
    run_bench_good_hint("90% VALID GOOD HINT", orders_90);
    std::cout << '\n';
    run_bench_bad_hint("90% VALID BAD HINT", orders_90);
    printModulo();

    run_bench_baseline("50% VALID BASELINE", orders_50);
    std::cout << '\n';
    run_bench_good_hint("50% VALID GOOD HINT", orders_50);
    std::cout << '\n';
    run_bench_bad_hint("50% VALID BAD HINT", orders_50);
    printModulo();

    run_bench_baseline("RANDOMIZED 50% VALID BASELINE", orders_random);
    std::cout << '\n';
    run_bench_good_hint("RANDOMIZED 50% VALID GOOD HINT", orders_random);
    std::cout << '\n';
    run_bench_bad_hint("RANDOMIZED 50% VALID BAD HINT", orders_random);


    /*
    run_bench_baseline("99% VALID BASELINE", orders_99);
    printModulo();
    run_bench_baseline("90% VALID BASELINE", orders_90);
    printModulo();
    run_bench_baseline("50% VALID BASELINE", orders_50);
    printModulo();
    run_bench_baseline("RANDOMIZED 50% VALID BASELINE", orders_random);
    printModulo();
    */
    return 0;
}