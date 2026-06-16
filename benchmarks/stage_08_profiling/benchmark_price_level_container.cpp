#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <deque>
#include <algorithm>
#include <string_view>
#include "llp/order.hpp"

constexpr std::size_t orders_cnt = 1'000'000;
constexpr std::size_t vector_pop_front_orders_cnt = 20'000;
constexpr std::size_t erase_orders_cnt = 20'000;

enum class CancelPosition {
    Front,
    Middle,
    Back
};

template <typename Container>
std::uint64_t pick_target_id(const Container& c, CancelPosition pos) {
    if (pos == CancelPosition::Front) {
        return c.front().id;
    }

    if (pos == CancelPosition::Back) {
        return c.back().id;
    }

    return c[c.size() / 2].id;
}

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

void run_push_back_deque(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    std::uint64_t checksum = 0;
    std::deque<llp::Order> d;

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders.resting) {
        d.push_back(order);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_push_back_vector(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    std::uint64_t checksum = 0;
    std::vector<llp::Order> v;
    v.reserve(orders_cnt);

    const auto start = std::chrono::steady_clock::now();
    for (auto order : orders.resting) {
        v.push_back(order);
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_front_deque(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    std::uint64_t checksum = 0;
    std::deque<llp::Order> d;

    for (auto order : orders.resting) {
        d.push_back(order);
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order;
        order = d.front();
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_front_vector(std::string_view name) {
    auto orders = generate_resting_asks(orders_cnt);
    std::uint64_t checksum = 0;
    std::vector<llp::Order> v;
    v.reserve(orders_cnt);

    for (auto order : orders.resting) {
        v.push_back(order);
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order;
        order = v.front();
        checksum += order.id;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_pop_front_deque(std::string_view name) {
    auto orders = generate_resting_asks(vector_pop_front_orders_cnt);
    std::uint64_t checksum = 0;
    std::deque<llp::Order> d;

    for (auto order : orders.resting) {
        d.push_back(order);
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < vector_pop_front_orders_cnt; ++i) {
        d.pop_front();
        checksum += i;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, vector_pop_front_orders_cnt);
}

void run_pop_front_vector(std::string_view name) {
    auto orders = generate_resting_asks(vector_pop_front_orders_cnt);
    std::uint64_t checksum = 0;
    std::vector<llp::Order> v;
    v.reserve(vector_pop_front_orders_cnt);

    for (auto order : orders.resting) {
        v.push_back(order);
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < vector_pop_front_orders_cnt; ++i) {
        v.erase(v.begin());
        checksum += i;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, vector_pop_front_orders_cnt);
}

template <typename Container>
void run_cancel_by_id(std::string_view name, CancelPosition pos, std::size_t count) {
    auto orders = generate_resting_asks(count);
    Container level;
    if constexpr (requires(Container c) { c.reserve(count); }) {
        level.reserve(count);
    }
    for (const auto& order : orders.resting) {
        level.push_back(order);
    }
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    while (!level.empty()) {
        const auto target_id = pick_target_id(level, pos);

        auto it = std::find_if(level.begin(), level.end(), [target_id](const llp::Order& order) {
            return order.id == target_id;
        });

        if (it != level.end()) {
            checksum += it->id;
            level.erase(it);
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, count);
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_push_back_deque("PUSH BACK DEQUE");
    std::cout << '\n';
    run_push_back_vector("PUSH BACK VECTOR");
    printModulo();

    run_front_deque("FRONT DEQUE");
    std::cout << '\n';
    run_front_vector("FRONT VECTOR");
    printModulo();

    run_pop_front_deque("POP FRONT DEQUE");
    std::cout << '\n';
    run_pop_front_vector("POP FRONT VECTOR");
    printModulo();

    run_cancel_by_id<std::deque<llp::Order>>("CANCEL FRONT DEQUE", CancelPosition::Front, erase_orders_cnt);
    std::cout << '\n';
    run_cancel_by_id<std::vector<llp::Order>>("CANCEL FRONT VECTOR", CancelPosition::Front, erase_orders_cnt);
    printModulo();

    run_cancel_by_id<std::deque<llp::Order>>("CANCEL MIDDLE DEQUE", CancelPosition::Middle, erase_orders_cnt);
    std::cout << '\n';
    run_cancel_by_id<std::vector<llp::Order>>("CANCEL MIDDLE VECTOR", CancelPosition::Middle, erase_orders_cnt);
    printModulo();

    run_cancel_by_id<std::deque<llp::Order>>("CANCEL BACK DEQUE", CancelPosition::Back, erase_orders_cnt);
    std::cout << '\n';
    run_cancel_by_id<std::vector<llp::Order>>("CANCEL BACK VECTOR", CancelPosition::Back, erase_orders_cnt);
    return 0;
}
