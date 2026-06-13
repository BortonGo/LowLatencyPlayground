
#include "llp/order.hpp"
#include "llp/order_book_side_flat.hpp"
#include "llp/order_book_side.hpp"
#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <string_view>

constexpr std::size_t orders_cnt = 100'000;

struct MatchingBenchmarkOrders {
    std::vector<llp::Order> resting;
};

MatchingBenchmarkOrders generate_resting_asks(std::size_t count) {
    MatchingBenchmarkOrders result;
    result.resting.reserve(count);
    std::uint64_t next_id = 1;
    for (std::size_t i = 0; i < count; ++i) {
        llp::Order ask{};
        ask.id = next_id++;
        ask.side = llp::OrderSide::Sell;
        ask.price = 100 + (i % 10);
        ask.quantity = 10;

        result.resting.push_back(ask);
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

void run_add_flat_ask_book(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::FlatAskBookSide book(100, 110);
    book.reserve(orders_cnt);
    llp::FlatAskBookSide book_warmup(100, 110);
    std::uint64_t checksum = 0;

    for (int i = 0; i < 10000; ++i) {
        book_warmup.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        book.add(order);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_add_order_book_side(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::OrderBookSide<llp::OrderSide::Sell> sell;
    sell.reserve(orders_cnt);
    llp::OrderBookSide<llp::OrderSide::Sell> sell_warmup;
    std::uint64_t checksum = 0;

    for (int i = 0; i < 10000; ++i) {
        sell_warmup.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (const auto& order : orders.resting) {
        sell.add(order);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_best_flat_ask_book(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::FlatAskBookSide book(100, 110);
    book.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (int i = 0; i < orders_cnt; ++i) {
        book.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (int i = 0; i < orders_cnt; ++i) {
        auto ord = book.best_order();
        if (ord) {
            checksum += ord->id;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_best_order_book_side(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::OrderBookSide<llp::OrderSide::Sell> sell;
    sell.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (int i = 0; i < orders_cnt; ++i) {
        sell.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (int i = 0; i < orders_cnt; ++i) {
        auto ord = sell.best_order();
        if (ord) {
            checksum += ord->id;
        }
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_pop_best_flat_ask_book(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::FlatAskBookSide book(100, 110);
    book.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (int i = 0; i < orders_cnt; ++i) {
        book.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (int i = 0; i < orders_cnt; ++i) {
        book.pop_best();
        checksum += i%100;
    }
    const auto end = std::chrono::steady_clock::now();
    printStats(name, start, end, checksum, orders.resting.size());
}

void run_pop_best_order_book_side(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    llp::OrderBookSide<llp::OrderSide::Sell> sell;
    sell.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (int i = 0; i < orders_cnt; ++i) {
        sell.add(orders.resting[i]);
    }

    const auto start = std::chrono::steady_clock::now();
    for (int i = 0; i < orders_cnt; ++i) {
        sell.pop_best();
        checksum += i%100;
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
    run_add_order_book_side("ADD ORDER BOOK");
    std::cout << '\n';
    run_add_flat_ask_book("ADD FLAT BOOK");
    printModulo();
    run_best_order_book_side("BEST ORDER BOOK");
    std::cout << '\n';
    run_best_flat_ask_book("BEST FLAT BOOK");
    printModulo();
    run_pop_best_order_book_side("POP BEST ORDER BOOK");
    std::cout << '\n';
    run_pop_best_flat_ask_book("POP BEST FLAT BOOK");
    return 0;
}