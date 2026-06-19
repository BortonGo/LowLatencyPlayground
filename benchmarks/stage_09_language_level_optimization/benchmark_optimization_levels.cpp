#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <algorithm>
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

std::uint64_t sum_prices(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::uint64_t sum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders) {
        sum += order.price;
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return sum;
}

std::size_t count_price_above(std::string_view name, const std::vector<llp::Order>& orders, std::uint64_t threshold) {
    std::uint64_t checksum = 0;
    std::size_t cnt = 0;

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders) {
        if (order.price > threshold) {
            ++cnt;
            checksum += order.id;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return cnt;
}

std::size_t count_valid_orders(std::string_view name, const std::vector<llp::Order>& orders) {
    std::uint64_t checksum = 0;
    std::size_t cnt = 0;

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders) {
        if (order.id > 0 && order.price > 0) {
            ++cnt;
            checksum += order.id;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return cnt;
}

std::size_t copy_matching_ids(std::string_view name, const std::vector<llp::Order>& orders,
                             std::uint64_t threshold, std::vector<std::uint64_t>& out) {
    std::uint64_t checksum = 0;
    out.clear();

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders) {
        if (order.price > threshold) {
            out.push_back(order.id);
            checksum += order.id;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders_cnt);
    return out.size();
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    std::vector<llp::Order> orders;
    std::vector<std::uint64_t> order_ids;
    orders.reserve(orders_cnt);
    order_ids.reserve(orders_cnt);

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order{};
        order.id = i + 1;
        order.price = 100 + (i % 1000);
        order.quantity = 1 + (i % 100);
        order.side = (i % 2 == 0) ? llp::OrderSide::Buy : llp::OrderSide::Sell;
        orders.push_back(order);
    }

    sum_prices("SUM PRICES", orders);
    /*
    printModulo();
    count_price_above("COUNT PRICE ABOVE", orders, 500);
    printModulo();
    count_valid_orders("COUNT VALID ORDERS", orders);
    printModulo();
    copy_matching_ids("COPY MATCHING IDS", orders, 500, order_ids);
    */
    return 0;
}