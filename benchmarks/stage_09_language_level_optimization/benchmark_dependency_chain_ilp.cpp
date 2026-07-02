#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>

constexpr std::size_t size_1m = 1'000'000;
constexpr std::size_t size_16m = 16'000'000;
constexpr std::size_t size_64m = 64'000'000;

std::vector<std::uint64_t> generate_values(std::size_t size) {
    std::vector<std::uint64_t> vec;
    vec.reserve(size);
    for (int i = 0; i < size; ++i) {
        vec.push_back(i%10'000);
    }
    return vec;
}

std::uint64_t sum_single_accumulator(const std::vector<std::uint64_t>& values) {
    std::uint64_t acc = 0;
    for (std::size_t i = 0, sz = values.size(); i < sz; ++i) {
        acc += values[i];
    }
    return acc;
}

std::uint64_t sum_four_accumulator(const std::vector<std::uint64_t>& values) {
    std::uint64_t acc0 = 0;
    std::uint64_t acc1 = 0;
    std::uint64_t acc2 = 0;
    std::uint64_t acc3 = 0;
    for (std::size_t i = 0, sz = values.size(); i < sz; i += 4) {
        acc0 += values[i];
        acc1 += values[i+1];
        acc2 += values[i+2];
        acc3 += values[i+3];
    }
    return acc0 + acc1 + acc2 + acc3;
}

std::uint64_t sum_eight_accumulator(const std::vector<std::uint64_t>& values) {
    std::uint64_t acc0 = 0;
    std::uint64_t acc1 = 0;
    std::uint64_t acc2 = 0;
    std::uint64_t acc3 = 0;
    std::uint64_t acc4 = 0;
    std::uint64_t acc5 = 0;
    std::uint64_t acc6 = 0;
    std::uint64_t acc7 = 0;
    for (std::size_t i = 0, sz = values.size(); i < sz; i += 8) {
        acc0 += values[i];
        acc1 += values[i+1];
        acc2 += values[i+2];
        acc3 += values[i+3];
        acc4 += values[i+4];
        acc5 += values[i+5];
        acc6 += values[i+6];
        acc7 += values[i+7];
    }
    return acc0 + acc1 + acc2 + acc3 + acc4 + acc5 + acc6 + acc7;
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
    std::vector<std::uint64_t> values_1m = generate_values(size_1m);
    std::vector<std::uint64_t> values_16m = generate_values(size_16m);
    std::vector<std::uint64_t> values_64m = generate_values(size_64m);

    printModulo();
    std::cout << "--------------------------1M-----------------------------\n";
    auto sum_single = sum_single_accumulator(values_1m);
    auto sum_four = sum_four_accumulator(values_1m);
    auto sum_eight = sum_eight_accumulator(values_1m);
    if (sum_single != sum_four || sum_single != sum_eight) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_single = std::chrono::steady_clock::now();
    auto checksum_single = sum_single_accumulator(values_1m);
    auto end_single = std::chrono::steady_clock::now();
    printStats("SUM SINGLE ACCUMULATE", start_single, end_single, checksum_single, size_1m);
    std::cout << '\n';
    auto start_four = std::chrono::steady_clock::now();
    auto checksum_four = sum_four_accumulator(values_1m);
    auto end_four = std::chrono::steady_clock::now();
    printStats("SUM FOUR ACCUMULATE", start_four, end_four, checksum_four, size_1m);
    std::cout << '\n';
    auto start_eight = std::chrono::steady_clock::now();
    auto checksum_eight = sum_eight_accumulator(values_1m);
    auto end_eight = std::chrono::steady_clock::now();
    printStats("SUM EIGHT ACCUMULATE", start_eight, end_eight, checksum_eight, size_1m);

    printModulo();
    std::cout << "--------------------------16M-----------------------------\n";
    sum_single = sum_single_accumulator(values_16m);
    sum_four = sum_four_accumulator(values_16m);
    sum_eight = sum_eight_accumulator(values_16m);
    if (sum_single != sum_four || sum_single != sum_eight) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_single = std::chrono::steady_clock::now();
    checksum_single = sum_single_accumulator(values_16m);
    end_single = std::chrono::steady_clock::now();
    printStats("SUM SINGLE ACCUMULATE", start_single, end_single, checksum_single, size_16m);
    std::cout << '\n';
    start_four = std::chrono::steady_clock::now();
    checksum_four = sum_four_accumulator(values_16m);
    end_four = std::chrono::steady_clock::now();
    printStats("SUM FOUR ACCUMULATE", start_four, end_four, checksum_four, size_16m);
    std::cout << '\n';
    start_eight = std::chrono::steady_clock::now();
    checksum_eight = sum_eight_accumulator(values_16m);
    end_eight = std::chrono::steady_clock::now();
    printStats("SUM EIGHT ACCUMULATE", start_eight, end_eight, checksum_eight, size_16m);

    printModulo();
    std::cout << "--------------------------64M-----------------------------\n";
    sum_single = sum_single_accumulator(values_64m);
    sum_four = sum_four_accumulator(values_64m);
    sum_eight = sum_eight_accumulator(values_64m);
    if (sum_single != sum_four || sum_single != sum_eight) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_single = std::chrono::steady_clock::now();
    checksum_single = sum_single_accumulator(values_64m);
    end_single = std::chrono::steady_clock::now();
    printStats("SUM SINGLE ACCUMULATE", start_single, end_single, checksum_single, size_64m);
    std::cout << '\n';
    start_four = std::chrono::steady_clock::now();
    checksum_four = sum_four_accumulator(values_64m);
    end_four = std::chrono::steady_clock::now();
    printStats("SUM FOUR ACCUMULATE", start_four, end_four, checksum_four, size_64m);
    std::cout << '\n';
    start_eight = std::chrono::steady_clock::now();
    checksum_eight = sum_eight_accumulator(values_64m);
    end_eight = std::chrono::steady_clock::now();
    printStats("SUM EIGHT ACCUMULATE", start_eight, end_eight, checksum_eight, size_64m);

    return 0;
}

