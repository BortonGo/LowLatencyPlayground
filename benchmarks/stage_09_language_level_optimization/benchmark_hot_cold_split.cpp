#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <array>
#include <random>
#include <algorithm>
#include "llp/order.hpp"

constexpr std::size_t orders_cnt = 1'000'000;

struct ValidationResult {
    std::size_t invalid_count;
    std::uint64_t checksum;
};

struct FatOrderRecord {
    std::uint64_t id;
    std::uint64_t price;
    std::uint32_t quantity;
    llp::OrderSide side;
    std::array<std::uint8_t, 64> cold_payload;
};

struct HotOrders {
    std::vector<std::uint64_t> ids;
    std::vector<std::uint64_t> prices;
    std::vector<std::uint32_t> quantities;
    std::vector<llp::OrderSide> sides;
    void reserve(std::size_t cap) {
        ids.reserve(cap);
        prices.reserve(cap);
        quantities.reserve(cap);
        sides.reserve(cap);
    }
};

struct ColdOrders {
    std::vector<std::array<std::uint8_t, 64>> payloads;
};

std::vector<FatOrderRecord> generate_fat_orders(std::size_t valid_percent, std::uint64_t seed) {
    std::vector<FatOrderRecord> orders;
    orders.reserve(orders_cnt);
    std::mt19937_64 rng{seed};
    const std::size_t valid_count = orders_cnt * valid_percent / 100;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        FatOrderRecord order{};
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
        for (std::size_t j = 0; j < order.cold_payload.size(); ++j) {
            order.cold_payload[j] = static_cast<std::uint8_t>((i + j) & 0xFF);
        }
        orders.push_back(order);
    }
    std::shuffle(orders.begin(), orders.end(), rng);
    return orders;
}

void make_hot_cold(HotOrders& hot_orders, ColdOrders& cold_orders, std::vector<FatOrderRecord>& fat_orders) {
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        hot_orders.ids.push_back(fat_orders[i].id);
        hot_orders.prices.push_back(fat_orders[i].price);
        hot_orders.quantities.push_back(fat_orders[i].quantity);
        hot_orders.sides.push_back(fat_orders[i].side);
        cold_orders.payloads.push_back(fat_orders[i].cold_payload);
    }
}

[[nodiscard]] bool is_valid_order(const std::uint64_t id, const std::uint64_t price, const std::uint32_t quant,
const llp::OrderSide side) {
    return (id > 0 && price > 0 && quant != 0 && (side == llp::OrderSide::Buy ||
        side == llp::OrderSide::Sell));
}

ValidationResult validate_fat_aos(const std::vector<FatOrderRecord>& orders) {
    std::uint64_t checksum = 0;
    std::size_t invalid_count = 0;
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (is_valid_order(orders[i].id, orders[i].price, orders[i].quantity, orders[i].side)) {
            checksum += orders[i].id + orders[i].price;
        } else {
            ++invalid_count;
        }
    }
    return {invalid_count, checksum};
}

ValidationResult validate_hot_split(const HotOrders& hot) {
    std::uint64_t checksum = 0;
    std::size_t invalid_count = 0;
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (is_valid_order(hot.ids[i], hot.prices[i], hot.quantities[i], hot.sides[i])) {
            checksum += hot.ids[i] + hot.prices[i];
        } else {
            ++invalid_count;
        }
    }
    return {invalid_count, checksum};
}

std::uint64_t validate_and_touch_cold_aos(const std::vector<FatOrderRecord>& orders) {
    std::uint64_t checksum = 0;
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (is_valid_order(orders[i].id, orders[i].price, orders[i].quantity, orders[i].side)) {
            checksum += orders[i].id + orders[i].price;
        } else {
            checksum += orders[i].cold_payload[i%64];
        }
    }
    return checksum;
}

std::uint64_t validate_and_touch_cold_split(const HotOrders& hot, const ColdOrders& cold) {
    std::uint64_t checksum = 0;
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (is_valid_order(hot.ids[i], hot.prices[i], hot.quantities[i], hot.sides[i])) {
            checksum += hot.ids[i] + hot.prices[i];
        } else {
            checksum += cold.payloads[i][i%64];
        }
    }
    return checksum;
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

void printStatsInvalid(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, std::size_t oper_cnt, std::size_t invalid) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "invalid = " << invalid << '\n';
    std::cout << "elapsed = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput_ops_sec = " << throughput << '\n';
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    std::vector<FatOrderRecord> fat_99 = generate_fat_orders(99,42);
    HotOrders hot_99;
    hot_99.reserve(orders_cnt);
    ColdOrders cold_99;
    cold_99.payloads.reserve(orders_cnt);
    make_hot_cold(hot_99, cold_99, fat_99);

    std::vector<FatOrderRecord> fat_90 = generate_fat_orders(90,42);
    HotOrders hot_90;
    hot_90.reserve(orders_cnt);
    ColdOrders cold_90;
    cold_90.payloads.reserve(orders_cnt);
    make_hot_cold(hot_90, cold_90, fat_90);

    std::vector<FatOrderRecord> fat_50 = generate_fat_orders(50,42);
    HotOrders hot_50;
    hot_50.reserve(orders_cnt);
    ColdOrders cold_50;
    cold_50.payloads.reserve(orders_cnt);
    make_hot_cold(hot_50, cold_50, fat_50);

    printModulo();
    std::cout << "--------------------------99%-----------------------------\n";
    auto fat_hot = validate_fat_aos(fat_99);
    auto hot = validate_hot_split(hot_99);
    auto fat_cold = validate_and_touch_cold_aos(fat_99);
    auto hot_cold = validate_and_touch_cold_split(hot_99, cold_99);

    if (fat_cold != hot_cold || hot.checksum != fat_hot.checksum || hot.invalid_count != fat_hot.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_aos_hot = std::chrono::steady_clock::now();
    auto checksum_aos_hot = validate_fat_aos(fat_99);
    auto end_aos_hot = std::chrono::steady_clock::now();
    printStatsInvalid("FAT AOS HOT ONLY", start_aos_hot, end_aos_hot, checksum_aos_hot.checksum, orders_cnt, checksum_aos_hot.invalid_count);
    std::cout << '\n';
    auto start_hot = std::chrono::steady_clock::now();
    auto checksum_hot = validate_hot_split(hot_99);
    auto end_hot = std::chrono::steady_clock::now();
    printStatsInvalid("HOT SPLIT HOT ONLY", start_hot, end_hot, checksum_hot.checksum, orders_cnt, checksum_hot.invalid_count);
    std::cout << '\n';
    auto start_aos = std::chrono::steady_clock::now();
    auto checksum_aos = validate_and_touch_cold_aos(fat_99);
    auto end_aos = std::chrono::steady_clock::now();
    printStats("FAT AOS COLD TOUCH", start_aos, end_aos, checksum_aos, orders_cnt);
    std::cout << '\n';
    auto start_hot_cold = std::chrono::steady_clock::now();
    auto checksum_hot_cold = validate_and_touch_cold_split(hot_99, cold_99);
    auto end_hot_cold = std::chrono::steady_clock::now();
    printStats("HOT SPLIT COLD TOUCH", start_hot_cold, end_hot_cold, checksum_hot_cold, orders_cnt);

    printModulo();
    std::cout << "--------------------------90%-----------------------------\n";
    fat_hot = validate_fat_aos(fat_90);
    hot = validate_hot_split(hot_90);
    fat_cold = validate_and_touch_cold_aos(fat_90);
    hot_cold = validate_and_touch_cold_split(hot_90, cold_90);

    if (fat_cold != hot_cold || hot.checksum != fat_hot.checksum || hot.invalid_count != fat_hot.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_aos_hot = std::chrono::steady_clock::now();
    checksum_aos_hot = validate_fat_aos(fat_90);
    end_aos_hot = std::chrono::steady_clock::now();
    printStatsInvalid("FAT AOS HOT ONLY", start_aos_hot, end_aos_hot, checksum_aos_hot.checksum, orders_cnt, checksum_aos_hot.invalid_count);
    std::cout << '\n';
    start_hot = std::chrono::steady_clock::now();
    checksum_hot = validate_hot_split(hot_90);
    end_hot = std::chrono::steady_clock::now();
    printStatsInvalid("HOT SPLIT HOT ONLY", start_hot, end_hot, checksum_hot.checksum, orders_cnt, checksum_hot.invalid_count);
    std::cout << '\n';
    start_aos = std::chrono::steady_clock::now();
    checksum_aos = validate_and_touch_cold_aos(fat_90);
    end_aos = std::chrono::steady_clock::now();
    printStats("FAT AOS COLD TOUCH", start_aos, end_aos, checksum_aos, orders_cnt);
    std::cout << '\n';
    start_hot_cold = std::chrono::steady_clock::now();
    checksum_hot_cold = validate_and_touch_cold_split(hot_90, cold_90);
    end_hot_cold = std::chrono::steady_clock::now();
    printStats("HOT SPLIT COLD TOUCH", start_hot_cold, end_hot_cold, checksum_hot_cold, orders_cnt);

    printModulo();
    std::cout << "--------------------------50%-----------------------------\n";
    fat_hot = validate_fat_aos(fat_50);
    hot = validate_hot_split(hot_50);
    fat_cold = validate_and_touch_cold_aos(fat_50);
    hot_cold = validate_and_touch_cold_split(hot_50, cold_50);

    if (fat_cold != hot_cold || hot.checksum != fat_hot.checksum || hot.invalid_count != fat_hot.invalid_count) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_aos_hot = std::chrono::steady_clock::now();
    checksum_aos_hot = validate_fat_aos(fat_50);
    end_aos_hot = std::chrono::steady_clock::now();
    printStatsInvalid("FAT AOS HOT ONLY", start_aos_hot, end_aos_hot, checksum_aos_hot.checksum, orders_cnt, checksum_aos_hot.invalid_count);
    std::cout << '\n';
    start_hot = std::chrono::steady_clock::now();
    checksum_hot = validate_hot_split(hot_50);
    end_hot = std::chrono::steady_clock::now();
    printStatsInvalid("HOT SPLIT HOT ONLY", start_hot, end_hot, checksum_hot.checksum, orders_cnt, checksum_hot.invalid_count);
    std::cout << '\n';
    start_aos = std::chrono::steady_clock::now();
    checksum_aos = validate_and_touch_cold_aos(fat_50);
    end_aos = std::chrono::steady_clock::now();
    printStats("FAT AOS COLD TOUCH", start_aos, end_aos, checksum_aos, orders_cnt);
    std::cout << '\n';
    start_hot_cold = std::chrono::steady_clock::now();
    checksum_hot_cold = validate_and_touch_cold_split(hot_50, cold_50);
    end_hot_cold = std::chrono::steady_clock::now();
    printStats("HOT SPLIT COLD TOUCH", start_hot_cold, end_hot_cold, checksum_hot_cold, orders_cnt);

    return 0;
}



