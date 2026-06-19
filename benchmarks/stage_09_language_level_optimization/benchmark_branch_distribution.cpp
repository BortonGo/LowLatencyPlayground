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

void generate_orders(std::vector<llp::Order>& orders, std::size_t percentiles) {
    std::uint64_t barier = (orders_cnt * percentiles) / 100;
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order{};
        order.id = 0 + (i % barier);
        order.price = 0 + (i % barier);
        order.quantity = 1 + (i % 100);
        order.side = (i % 2 == 0) ? llp::OrderSide::Buy : llp::OrderSide::Sell;
        orders.push_back(order);
    }
}

void generate_rand_orders(std::vector<llp::Order>& orders) {
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order{};
        order.id = 0 + (rand() % 100);
        order.price = 0 + (rand() % 100);
        order.quantity = 1 + (i % 100);
        order.side = (i % 2 == 0) ? llp::OrderSide::Buy : llp::OrderSide::Sell;
        orders.push_back(order);
    }
}


std::uint64_t run_bench(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::uint64_t sum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders) {
        if (order.id > 0 && order.price > 0) {
            sum += order.price;
            checksum += order.id;
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

    std::vector<llp::Order> orders_rand;
    orders_rand.reserve(orders_cnt);

    generate_orders(orders_99, 99);
    generate_orders(orders_90, 90);
    generate_orders(orders_50, 99);
    generate_rand_orders(orders_rand);

    run_bench("99% Valid", orders_99);
    printModulo();

    run_bench("90% Valid", orders_90);
    printModulo();

    run_bench("50% Valid", orders_50);
    printModulo();

    run_bench("Random Valid", orders_rand);

    return 0;
}