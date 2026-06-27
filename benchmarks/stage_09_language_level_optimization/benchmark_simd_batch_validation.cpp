#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>
#include "llp/benchmark_timer.hpp"
#include "llp/order.hpp"

constexpr std::size_t orders_cnt = 1'000'000;

struct ValidationResult {
    std::size_t invalid_count;
    std::uint64_t checksum;
};

struct OrdersSoA {
    std::vector<std::uint64_t> ids;
    std::vector<std::uint64_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<llp::OrderSide> sides;

    [[nodiscard]] std::size_t size() const {
        return ids.size();
    }
    void reserve(std::size_t cap) {
        ids.reserve(cap);
        prices.reserve(cap);
        quantities.reserve(cap);
        sides.reserve(cap);
    }

};

[[nodiscard]] bool is_valid_order(const std::uint64_t id, const std::uint64_t price, const std::uint32_t quant,
const llp::OrderSide side, const std::uint64_t min_price, const std::uint64_t max_price) {
    return (id > 0 && price > 0 && price >= min_price && price <= max_price && quant != 0 && (side == llp::OrderSide::Buy ||
        side == llp::OrderSide::Sell));
}

void generate_orders(std::vector<llp::Order>& orders, std::size_t valid_percent, std::uint64_t seed) {
    orders.clear();
    orders.reserve(orders_cnt);
    std::mt19937_64 rng{seed};
    const std::size_t valid_count = orders_cnt * valid_percent / 100;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        llp::Order order{};
        order.id = i + 1;
        order.price = 500 + (i % 1000);
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

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, std::size_t invalid_cnt, std::size_t oper_cnt) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "invalid_cnt = " << invalid_cnt << '\n';
    std::cout << "elapsed = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput_ops_sec = " << throughput << '\n';
}

ValidationResult validate_aos_scalar(const std::vector<llp::Order>& orders, const std::uint64_t min_price, const std::uint64_t max_price) {
    std::uint64_t checksum = 0;
    std::size_t invalid_count = 0;

#pragma clang loop vectorize(disable)
#pragma clang loop interleave(disable)
#pragma clang loop unroll(disable)
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (!is_valid_order(orders[i].id, orders[i].price, orders[i].quantity, orders[i].side, min_price, max_price)) {
            checksum += orders[i].id + i;
            ++invalid_count;
        }
    }
    return {invalid_count, checksum};
}

ValidationResult validate_soa_scalar(const OrdersSoA& orders, const std::uint64_t min_price, const std::uint64_t max_price) {
    std::uint64_t checksum = 0;
    std::size_t invalid_count = 0;

#pragma clang loop vectorize(disable)
#pragma clang loop interleave(disable)
#pragma clang loop unroll(disable)
    for (std::size_t i = 0, sz = orders.size(); i < sz; ++i) {
        if (!is_valid_order(orders.ids[i], orders.prices[i], orders.quantities[i], orders.sides[i], min_price, max_price)) {
            checksum += orders.ids[i] + i;
            ++invalid_count;
        }
    }
    return {invalid_count, checksum};
}

ValidationResult validate_soa_auto(const OrdersSoA& orders, const std::uint64_t min_price, const std::uint64_t max_price) {
    std::uint64_t checksum = 0;
    std::size_t invalid_count = 0;

    for (std::size_t i = 0, sz = orders.size(); i < sz; ++i) {
        if (!is_valid_order(orders.ids[i], orders.prices[i], orders.quantities[i], orders.sides[i], min_price, max_price)) {
            checksum += orders.ids[i] + i;
            ++invalid_count;
        }
    }
    return {invalid_count, checksum};
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    std::vector<llp::Order> orders_99;
    orders_99.reserve(orders_cnt);
    generate_orders(orders_99, 99, 42);

    OrdersSoA soa_99;
    soa_99.reserve(orders_cnt);
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        soa_99.ids.push_back(orders_99[i].id);
        soa_99.prices.push_back(orders_99[i].price);
        soa_99.quantities.push_back(orders_99[i].quantity);
        soa_99.sides.push_back(orders_99[i].side);
    }

    std::vector<llp::Order> orders_90;
    orders_90.reserve(orders_cnt);
    generate_orders(orders_90, 90, 42);

    OrdersSoA soa_90;
    soa_90.reserve(orders_cnt);
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        soa_90.ids.push_back(orders_90[i].id);
        soa_90.prices.push_back(orders_90[i].price);
        soa_90.quantities.push_back(orders_90[i].quantity);
        soa_90.sides.push_back(orders_90[i].side);
    }

    std::vector<llp::Order> orders_50;
    orders_50.reserve(orders_cnt);
    generate_orders(orders_50, 50, 42);

    OrdersSoA soa_50;
    soa_50.reserve(orders_cnt);
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        soa_50.ids.push_back(orders_50[i].id);
        soa_50.prices.push_back(orders_50[i].price);
        soa_50.quantities.push_back(orders_50[i].quantity);
        soa_50.sides.push_back(orders_50[i].side);
    }

    printModulo();
    std::cout << "--------------------------99%-----------------------------\n";

    auto scalar_aos = validate_aos_scalar(orders_99, 500,1500);
    auto scalar_soa = validate_soa_scalar(soa_99, 500,1500);
    auto auto_soa = validate_soa_auto(soa_99, 500,1500);

    if (scalar_aos.checksum != scalar_soa.checksum || scalar_aos.checksum != auto_soa.checksum
        || scalar_aos.invalid_count != scalar_soa.invalid_count || scalar_aos.invalid_count != auto_soa.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_scalar_aos = std::chrono::steady_clock::now();
    auto checksum_scalar_aos = validate_aos_scalar(orders_99, 500,1500);
    auto end_scalar_aos = std::chrono::steady_clock::now();
    printStats("SCALAR AOS", start_scalar_aos, end_scalar_aos, checksum_scalar_aos.checksum, checksum_scalar_aos.invalid_count, orders_cnt);
    std::cout << '\n';

    auto start_scalar_soa = std::chrono::steady_clock::now();
    auto checksum_scalar_soa = validate_soa_scalar(soa_99, 500,1500);
    auto end_scalar_soa = std::chrono::steady_clock::now();
    printStats("SCALAR SOA", start_scalar_soa, end_scalar_soa, checksum_scalar_soa.checksum, checksum_scalar_soa.invalid_count, orders_cnt);
    std::cout << '\n';

    auto start_auto_soa = std::chrono::steady_clock::now();
    auto checksum_auto_soa = validate_soa_auto(soa_99, 500,1500);
    auto end_auto_soa = std::chrono::steady_clock::now();
    printStats("AUTO SOA", start_auto_soa, end_auto_soa, checksum_auto_soa.checksum, checksum_auto_soa.invalid_count, orders_cnt);

    printModulo();
    std::cout << "--------------------------90%-----------------------------\n";

    scalar_aos = validate_aos_scalar(orders_90, 500,1500);
    scalar_soa = validate_soa_scalar(soa_90, 500,1500);
    auto_soa = validate_soa_auto(soa_90, 500,1500);

    if (scalar_aos.checksum != scalar_soa.checksum || scalar_aos.checksum != auto_soa.checksum
        || scalar_aos.invalid_count != scalar_soa.invalid_count || scalar_aos.invalid_count != auto_soa.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_scalar_aos = std::chrono::steady_clock::now();
    checksum_scalar_aos = validate_aos_scalar(orders_90, 500,1500);
    end_scalar_aos = std::chrono::steady_clock::now();
    printStats("SCALAR AOS", start_scalar_aos, end_scalar_aos, checksum_scalar_aos.checksum, checksum_scalar_aos.invalid_count, orders_cnt);
    std::cout << '\n';

    start_scalar_soa = std::chrono::steady_clock::now();
    checksum_scalar_soa = validate_soa_scalar(soa_90, 500,1500);
    end_scalar_soa = std::chrono::steady_clock::now();
    printStats("SCALAR SOA", start_scalar_soa, end_scalar_soa, checksum_scalar_soa.checksum, checksum_scalar_soa.invalid_count, orders_cnt);
    std::cout << '\n';

    start_auto_soa = std::chrono::steady_clock::now();
    checksum_auto_soa = validate_soa_auto(soa_90, 500,1500);
    end_auto_soa = std::chrono::steady_clock::now();
    printStats("AUTO SOA", start_auto_soa, end_auto_soa, checksum_auto_soa.checksum, checksum_auto_soa.invalid_count, orders_cnt);

    printModulo();
    std::cout << "--------------------------50%-----------------------------\n";

    scalar_aos = validate_aos_scalar(orders_50, 500,1500);
    scalar_soa = validate_soa_scalar(soa_50, 500,1500);
    auto_soa = validate_soa_auto(soa_50, 500,1500);

    if (scalar_aos.checksum != scalar_soa.checksum || scalar_aos.checksum != auto_soa.checksum
        || scalar_aos.invalid_count != scalar_soa.invalid_count || scalar_aos.invalid_count != auto_soa.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_scalar_aos = std::chrono::steady_clock::now();
    checksum_scalar_aos = validate_aos_scalar(orders_50, 500,1500);
    end_scalar_aos = std::chrono::steady_clock::now();
    printStats("SCALAR AOS", start_scalar_aos, end_scalar_aos, checksum_scalar_aos.checksum, checksum_scalar_aos.invalid_count, orders_cnt);
    std::cout << '\n';

    start_scalar_soa = std::chrono::steady_clock::now();
    checksum_scalar_soa = validate_soa_scalar(soa_50, 500,1500);
    end_scalar_soa = std::chrono::steady_clock::now();
    printStats("SCALAR SOA", start_scalar_soa, end_scalar_soa, checksum_scalar_soa.checksum, checksum_scalar_soa.invalid_count, orders_cnt);
    std::cout << '\n';

    start_auto_soa = std::chrono::steady_clock::now();
    checksum_auto_soa = validate_soa_auto(soa_50, 500,1500);
    end_auto_soa = std::chrono::steady_clock::now();
    printStats("AUTO SOA", start_auto_soa, end_auto_soa, checksum_auto_soa.checksum, checksum_auto_soa.invalid_count, orders_cnt);

    return 0;
}
