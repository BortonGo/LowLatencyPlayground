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

std::vector<std::uint8_t> generate_flags( std::size_t valid_percent, std::uint64_t seed) {
    std::vector<std::uint8_t> flags;
    flags.reserve(size_16m);
    std::mt19937_64 rng{seed};
    const std::size_t valid_count = size_16m * valid_percent / 100;

    for (std::size_t i = 0; i < size_16m; ++i) {
        if (i >= valid_count) {
            flags.push_back(0);
        } else {
            flags.push_back(1);
        }
    }
    std::shuffle(flags.begin(), flags.end(), rng);
    return flags;
}

std::uint64_t sum_branchy(std::vector<std::uint64_t>& values, std::vector<std::uint8_t>& flags) {
    std::uint64_t checksum {};
    for (std::size_t i = 0; i < size_16m; ++i) {
        if (flags[i]) checksum += values[i];
    }
    return checksum;
}

std::uint64_t sum_ternary_select(std::vector<std::uint64_t>& values, std::vector<std::uint8_t>& flags) {
    std::uint64_t checksum {};
    for (std::size_t i = 0; i < size_16m; ++i) {
        checksum += flags[i] ? values[i] : 0;
    }
    return checksum;
}

std::uint64_t sum_arithmetic_mask(std::vector<std::uint64_t>& values, std::vector<std::uint8_t>& flags) {
    std::uint64_t checksum {};
    for (std::size_t i = 0; i < size_16m; ++i) {
        checksum += values[i] * static_cast<std::uint64_t>(flags[i]);
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

    std::vector<std::uint64_t> values = generate_values(size_16m);

    std::vector<std::uint8_t> flags_99 = generate_flags(99, 42);
    std::vector<std::uint8_t> flags_90 = generate_flags(90, 42);
    std::vector<std::uint8_t> flags_50 = generate_flags(50, 42);

    printModulo();
    std::cout << "------------------------------------- 99% -------------------------------------\n";

    auto sum_br = sum_branchy(values, flags_99);
    auto sum_tern = sum_ternary_select(values, flags_99);
    auto sum_mask = sum_arithmetic_mask(values, flags_99);

    if (sum_br != sum_tern || sum_br != sum_mask) {
        std::cout << "Results mismatch\n";
        return 1;
    }

    auto start_br = std::chrono::steady_clock::now();
    auto checksum_br = sum_branchy(values, flags_99);
    auto end_br = std::chrono::steady_clock::now();
    printStats("SUM BRANCHY", start_br, end_br, checksum_br, size_16m);
    std::cout << "\n";

    auto start_tern = std::chrono::steady_clock::now();
    auto checksum_tern = sum_ternary_select(values, flags_99);
    auto end_tern = std::chrono::steady_clock::now();
    printStats("SUM TERNARY", start_tern, end_tern, checksum_tern, size_16m);
    std::cout << "\n";

    auto start_mask = std::chrono::steady_clock::now();
    auto checksum_mask = sum_arithmetic_mask(values, flags_99);
    auto end_mask = std::chrono::steady_clock::now();
    printStats("SUM MASK", start_mask, end_mask, checksum_mask, size_16m);
    std::cout << "\n";

    printModulo();
    std::cout << "------------------------------------- 90% -------------------------------------\n";

    sum_br = sum_branchy(values, flags_90);
    sum_tern = sum_ternary_select(values, flags_90);
    sum_mask = sum_arithmetic_mask(values, flags_90);

    if (sum_br != sum_tern || sum_br != sum_mask) {
        std::cout << "Results mismatch\n";
        return 1;
    }

    start_br = std::chrono::steady_clock::now();
    checksum_br = sum_branchy(values, flags_90);
    end_br = std::chrono::steady_clock::now();
    printStats("SUM BRANCHY", start_br, end_br, checksum_br, size_16m);
    std::cout << "\n";

    start_tern = std::chrono::steady_clock::now();
    checksum_tern = sum_ternary_select(values, flags_90);
    end_tern = std::chrono::steady_clock::now();
    printStats("SUM TERNARY", start_tern, end_tern, checksum_tern, size_16m);
    std::cout << "\n";

    start_mask = std::chrono::steady_clock::now();
    checksum_mask = sum_arithmetic_mask(values, flags_90);
    end_mask = std::chrono::steady_clock::now();
    printStats("SUM MASK", start_mask, end_mask, checksum_mask, size_16m);
    std::cout << "\n";

    printModulo();
    std::cout << "------------------------------------- 50% -------------------------------------\n";

    sum_br = sum_branchy(values, flags_50);
    sum_tern = sum_ternary_select(values, flags_50);
    sum_mask = sum_arithmetic_mask(values, flags_50);

    if (sum_br != sum_tern || sum_br != sum_mask) {
        std::cout << "Results mismatch\n";
        return 1;
    }

    start_br = std::chrono::steady_clock::now();
    checksum_br = sum_branchy(values, flags_50);
    end_br = std::chrono::steady_clock::now();
    printStats("SUM BRANCHY", start_br, end_br, checksum_br, size_16m);
    std::cout << "\n";

    start_tern = std::chrono::steady_clock::now();
    checksum_tern = sum_ternary_select(values, flags_50);
    end_tern = std::chrono::steady_clock::now();
    printStats("SUM TERNARY", start_tern, end_tern, checksum_tern, size_16m);
    std::cout << "\n";

    start_mask = std::chrono::steady_clock::now();
    checksum_mask = sum_arithmetic_mask(values, flags_50);
    end_mask = std::chrono::steady_clock::now();
    printStats("SUM MASK", start_mask, end_mask, checksum_mask, size_16m);
    std::cout << "\n";

    return 0;
}

