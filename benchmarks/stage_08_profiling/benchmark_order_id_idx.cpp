
#include "llp/order_id_index.hpp"
#include <iostream>
#include <cstdint>
#include <cstddef>
#include <chrono>
#include <vector>
#include <unordered_map>
#include <string_view>

constexpr std::size_t orders_cnt = 10'000'000;

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

void run_insert_order_id_idx(std::string_view name) {
    llp::DenseOrderIdIndex oii(orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (oii.insert(i, i%1050)) {
            checksum += i;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_insert_unordered_map(std::string_view name) {
    std::unordered_map<std::uint64_t, std::uint64_t> um;
    um.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        um[i] = i%1050;
        checksum += i;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_find_order_id_idx(std::string_view name) {
    llp::DenseOrderIdIndex oii(orders_cnt);
    std::uint64_t checksum = 0;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        oii.insert(i, i%1050);
        checksum += i;
    }

    std::uint64_t level_idx = 0;

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (oii.find(i, level_idx)) {
            checksum += level_idx;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}


void run_find_unordered_map(std::string_view name) {
    std::unordered_map<std::uint64_t, std::uint64_t> um;
    um.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        um[i] = i%1050;
        checksum += i;
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        auto it = um.find(i);
        if (it != um.end()) {
            checksum += it->second;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_erase_order_id_idx(std::string_view name) {
    llp::DenseOrderIdIndex oii(orders_cnt);
    std::uint64_t checksum = 0;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (oii.insert(i, i%1050)) {
            checksum += i;
        }
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (oii.erase(i)) {
            checksum += i;
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_erase_unordered_map(std::string_view name) {
    std::unordered_map<std::uint64_t, std::uint64_t> um;
    um.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    for (std::size_t i = 0; i < orders_cnt; ++i) {
        um[i] = i%1050;
        checksum += i;
    }

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        um.erase(i);
        checksum += i;
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_all_order_id_idx(std::string_view name) {
    llp::DenseOrderIdIndex oii(orders_cnt);
    std::uint64_t checksum = 0;
    std::uint64_t level_idx = 0;

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (i < orders_cnt/3) {
            if (oii.insert(i, i%1050)) {
                checksum += i;
            }
        } else if (i < 2 * orders_cnt/3) {
            if (oii.find(i%(orders_cnt/3), level_idx)) {
                checksum += level_idx;
            }
        } else {
            if (oii.erase(i%(orders_cnt/3))) {
                checksum += i;
            }
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}

void run_all_unordered_map(std::string_view name) {
    std::unordered_map<std::uint64_t, std::uint64_t> um;
    um.reserve(orders_cnt);
    std::uint64_t checksum = 0;

    const auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < orders_cnt; ++i) {
        if (i < orders_cnt/3) {
            um[i] = i%1050;
            checksum += i;
        } else if (i < 2 * orders_cnt/3) {
            auto it = um.find(i%(orders_cnt/3));
            if (it != um.end()) {
                checksum += it->second;
            }
        } else {
            if (um.erase(i%(orders_cnt/3)) != 0) {
                checksum += i;
            }
        }
    }
    const auto end = std::chrono::steady_clock::now();

    printStats(name, start, end, checksum, orders_cnt);
}


void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_insert_unordered_map("INSERT UNORDERED MAP");
    std::cout << '\n';
    run_insert_order_id_idx("INSERT ORDER ID IDX");
    printModulo();
    run_find_unordered_map("FIND UNORDERED MAP");
    std::cout << '\n';
    run_find_order_id_idx("FIND ORDER ID IDX");
    printModulo();
    run_erase_unordered_map("ERASE UNORDERED MAP");
    std::cout << '\n';
    run_erase_order_id_idx("ERASE ORDER ID IDX");
    printModulo();
    run_all_unordered_map("ALL UNORDERED MAP");
    std::cout << '\n';
    run_all_order_id_idx("ALL ORDER ID IDX");
    printModulo();
    return 0;
}
