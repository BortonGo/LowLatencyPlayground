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
        vec.push_back(i%10'000);
    }
    return vec;
}

std::vector<std::uint32_t> generate_indices(std::size_t size) {
    std::vector<std::uint32_t> vec;
    vec.reserve(size);
    std::mt19937_64 rng{42};
    for (int i = 0; i < size; ++i) {
        vec.push_back(i);
    }
    std::shuffle(vec.begin(), vec.end(), rng);
    return vec;
}

std::uint64_t sum_random_no_prefetch( const std::vector<std::uint64_t>& values, const std::vector<std::uint32_t>& indices) {
    std::uint64_t checksum = 0;
    for (auto i : indices) {
        checksum += values[i];
    }
    return checksum;
}

std::uint64_t sum_random_prefetch( const std::vector<std::uint64_t>& values, const std::vector<std::uint32_t>& indices, std::size_t distance) {
    std::uint64_t checksum = 0;
    for (std::size_t i = 0; i < indices.size(); ++i) {
        if (i + distance < indices.size()) {
            __builtin_prefetch(&values[indices[i + distance]], 0, 1);
        }
        checksum += values[indices[i]];
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

int main() {
    std::vector<std::uint64_t> values_16m = generate_values(size_16m);
    std::vector<std::uint32_t> indices_16m = generate_indices(size_16m);

    auto zero_checksum = sum_random_no_prefetch(values_16m, indices_16m);
    auto checksum_1 = sum_random_prefetch(values_16m, indices_16m, 1);
    auto checksum_4 = sum_random_prefetch(values_16m, indices_16m, 4);
    auto checksum_8 = sum_random_prefetch(values_16m, indices_16m, 8);
    auto checksum_16 = sum_random_prefetch(values_16m, indices_16m, 16);
    auto checksum_32 = sum_random_prefetch(values_16m, indices_16m, 32);
    auto checksum_64 = sum_random_prefetch(values_16m, indices_16m, 64);

    if (zero_checksum != checksum_1 || zero_checksum != checksum_4 || zero_checksum != checksum_8 ||
        zero_checksum != checksum_16 || zero_checksum != checksum_32 || zero_checksum != checksum_64) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start = std::chrono::steady_clock::now();
    auto checksum = sum_random_no_prefetch(values_16m, indices_16m);
    auto end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM NO PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,1);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 1 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,4);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 4 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,8);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 8 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,16);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 16 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,32);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 32 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    checksum = sum_random_prefetch(values_16m, indices_16m,64);
    end = std::chrono::steady_clock::now();
    printStats("SUM RANDOM 64 PREFETCH", start, end, checksum, size_16m);
    std::cout << '\n';

    return 0;
}
