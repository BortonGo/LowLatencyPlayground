#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>

constexpr std::size_t size_100m = 100'000'000;

std::vector<std::uint64_t> generate_values(std::size_t size) {
    std::vector<std::uint64_t> vec;
    vec.reserve(size);
    for (int i = 0; i < size; ++i) {
        vec.push_back(i%10);
    }
    return vec;
}

std::uint64_t run_modulo_index(const std::vector<std::uint64_t>& vec, std::size_t iterations, std::uint32_t capacity) {
    std::uint64_t checksum {};
    for (std::size_t i = 0, idx = 0; i < iterations; ++i, idx = (idx+1)%capacity) {
        checksum += vec[idx];
    }
    return checksum;
}

std::uint64_t run_branch_reset_index(const std::vector<std::uint64_t>& vec, std::size_t iterations, std::uint32_t capacity) {
    std::uint64_t checksum {};
    for (std::size_t idx = 0, i = 0; i < iterations; ++idx, ++i) {
        if (idx == capacity) idx = 0;
        checksum += vec[idx];
    }
    return checksum;
}

std::uint64_t run_mask_index(const std::vector<std::uint64_t>& vec, std::size_t iterations, std::uint32_t capacity) {
    std::uint64_t checksum {};
    for (std::size_t i = 0, idx = 0; i < iterations; ++i, idx = (idx + 1) & (capacity - 1)) {
        checksum += vec[idx];
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
    std::size_t capacity = 1024;
    std::vector<std::uint64_t> vec1024 = generate_values(capacity);

    printModulo();
    std::cout << "--------------------------CAPACITY 1024-----------------------------\n";
    auto sum_modulo = run_modulo_index(vec1024, size_100m, capacity);
    auto sum_branch =  run_branch_reset_index(vec1024, size_100m, capacity);
    auto sum_mask =  run_mask_index(vec1024, size_100m, capacity);
    if ( sum_modulo != sum_branch || sum_modulo != sum_mask) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_modulo = std::chrono::steady_clock::now();
    auto checksum_modulo = run_modulo_index(vec1024, size_100m, capacity);
    auto end_modulo = std::chrono::steady_clock::now();
    printStats("MODULO", start_modulo, end_modulo, checksum_modulo, size_100m);
    std::cout << '\n';
    auto start_branch = std::chrono::steady_clock::now();
    auto checksum_branch =  run_branch_reset_index(vec1024, size_100m, capacity);
    auto end_branch = std::chrono::steady_clock::now();
    printStats("BRANCH RESET", start_branch, end_branch, checksum_branch, size_100m);
    std::cout << '\n';
    auto start_mask = std::chrono::steady_clock::now();
    auto checksum_mask = run_mask_index(vec1024, size_100m, capacity);
    auto end_mask = std::chrono::steady_clock::now();
    printStats("MASK", start_mask, end_mask, checksum_mask, size_100m);

    capacity = 4096;
    std::vector<std::uint64_t> vec4096 = generate_values(capacity);

    printModulo();
    std::cout << "--------------------------CAPACITY 4096-----------------------------\n";
    sum_modulo = run_modulo_index(vec4096, size_100m, capacity);
    sum_branch =  run_branch_reset_index(vec4096, size_100m, capacity);
    sum_mask =  run_mask_index(vec4096, size_100m, capacity);
    if ( sum_modulo != sum_branch || sum_modulo != sum_mask) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_modulo = std::chrono::steady_clock::now();
    checksum_modulo = run_modulo_index(vec4096, size_100m, capacity);
    end_modulo = std::chrono::steady_clock::now();
    printStats("MODULO", start_modulo, end_modulo, checksum_modulo, size_100m);
    std::cout << '\n';
    start_branch = std::chrono::steady_clock::now();
    checksum_branch =  run_branch_reset_index(vec4096, size_100m, capacity);
    end_branch = std::chrono::steady_clock::now();
    printStats("BRANCH RESET", start_branch, end_branch, checksum_branch, size_100m);
    std::cout << '\n';
    start_mask = std::chrono::steady_clock::now();
    checksum_mask = run_mask_index(vec4096, size_100m, capacity);
    end_mask = std::chrono::steady_clock::now();
    printStats("MASK", start_mask, end_mask, checksum_mask, size_100m);

    capacity = 1000;
    std::vector<std::uint64_t> vec1000 = generate_values(capacity);

    printModulo();
    std::cout << "--------------------------CAPACITY 4096-----------------------------\n";
    sum_modulo = run_modulo_index(vec1000, size_100m, capacity);
    sum_branch =  run_branch_reset_index(vec1000, size_100m, capacity);
    if ( sum_modulo != sum_branch) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_modulo = std::chrono::steady_clock::now();
    checksum_modulo = run_modulo_index(vec1000, size_100m, capacity);
    end_modulo = std::chrono::steady_clock::now();
    printStats("MODULO", start_modulo, end_modulo, checksum_modulo, size_100m);
    std::cout << '\n';
    start_branch = std::chrono::steady_clock::now();
    checksum_branch =  run_branch_reset_index(vec1000, size_100m, capacity);
    end_branch = std::chrono::steady_clock::now();
    printStats("BRANCH RESET", start_branch, end_branch, checksum_branch, size_100m);
    std::cout << '\n';

    return 0;
}

