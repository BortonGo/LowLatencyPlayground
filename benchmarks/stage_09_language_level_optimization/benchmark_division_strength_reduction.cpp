#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>

constexpr std::size_t size_16m = 16'000'000;

std::vector<std::uint64_t> generate_values(std::size_t size) {
    std::vector<std::uint64_t> vec;
    vec.reserve(size);
    for (int i = 0; i < size; ++i) {
        vec.push_back(1'000'000 + (i%10'000));
    }
    return vec;
}

std::uint64_t sum_div_runtime(const std::vector<std::uint64_t>& vec, std::uint64_t divisor) {
    std::uint64_t checksum {};
    for (auto x : vec) {
        checksum += x / divisor;
    }
    return checksum;
}

std::uint64_t sum_div_const_10(const std::vector<std::uint64_t>& vec) {
    std::uint64_t checksum {};
    for (auto x : vec) {
        checksum += x / 10;
    }
    return checksum;
}

std::uint64_t sum_div_const_8(const std::vector<std::uint64_t>& vec) {
    std::uint64_t checksum {};
    for (auto x : vec) {
        checksum += x / 8;
    }
    return checksum;
}

std::uint64_t sum_shift_3(const std::vector<std::uint64_t>& vec) {
    std::uint64_t checksum {};
    for (auto x : vec) {
        checksum += x >> 3;
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

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {

    std::vector<std::uint64_t> vec = generate_values(size_16m);

    printModulo();
    std::cout << "-------------------------- Div 10 -----------------------------\n";
    auto sum_runtime_div = sum_div_runtime(vec, 10);
    auto sum_const =  sum_div_const_10(vec);
    if (sum_runtime_div != sum_const) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_runtime_div = std::chrono::steady_clock::now();
    auto checksum_runtime_div = sum_div_runtime(vec, 10);
    auto end_runtime_div = std::chrono::steady_clock::now();
    printStats("RUNTIME", start_runtime_div, end_runtime_div, checksum_runtime_div, size_16m);
    std::cout << '\n';
    auto start_sum_const = std::chrono::steady_clock::now();
    auto checksum_sum_const =  sum_div_const_10(vec);
    auto end_sum_const = std::chrono::steady_clock::now();
    printStats("CONST", start_sum_const, end_sum_const, checksum_sum_const, size_16m);

    printModulo();
    std::cout << "-------------------------- Div 8 -----------------------------\n";
    sum_runtime_div = sum_div_runtime(vec, 8);
    sum_const =  sum_div_const_8(vec);
    auto sum_shift = sum_shift_3(vec);
    if (sum_runtime_div != sum_const || sum_runtime_div != sum_shift) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_runtime_div = std::chrono::steady_clock::now();
    checksum_runtime_div = sum_div_runtime(vec, 8);
    end_runtime_div = std::chrono::steady_clock::now();
    printStats("RUNTIME", start_runtime_div, end_runtime_div, checksum_runtime_div, size_16m);
    std::cout << '\n';
    start_sum_const = std::chrono::steady_clock::now();
    checksum_sum_const =  sum_div_const_8(vec);
    end_sum_const = std::chrono::steady_clock::now();
    printStats("CONST", start_sum_const, end_sum_const, checksum_sum_const, size_16m);
    std::cout << '\n';
    auto start_shift = std::chrono::steady_clock::now();
    auto checksum_shift =  sum_shift_3(vec);
    auto end_shift = std::chrono::steady_clock::now();
    printStats("SHIFT", start_shift, end_shift, checksum_shift, size_16m);

    return 0;
}

