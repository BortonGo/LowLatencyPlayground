#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>

constexpr std::size_t size_64k = 64'000;
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

std::uint64_t sum_sequential(const std::vector<std::uint64_t>& values) {
    std::uint64_t checksum = 0;
    for (auto v : values) {
        checksum += v;
    }
    return checksum;
}

std::uint64_t sum_random_indexed( const std::vector<std::uint64_t>& values, const std::vector<std::uint32_t>& indices) {
    std::uint64_t checksum = 0;
    for (auto i : indices) {
        checksum += values[i];
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
    std::vector<std::uint64_t> values_64k = generate_values(size_64k);
    std::vector<std::uint64_t> values_1m = generate_values(size_1m);
    std::vector<std::uint64_t> values_16m = generate_values(size_16m);
    std::vector<std::uint64_t> values_64m = generate_values(size_64m);

    std::vector<std::uint32_t> indices_64k = generate_indices(size_64k);
    std::vector<std::uint32_t> indices_1m = generate_indices(size_1m);
    std::vector<std::uint32_t> indices_16m = generate_indices(size_16m);
    std::vector<std::uint32_t> indices_64m = generate_indices(size_64m);

    printModulo();
    std::cout << "--------------------------64K-----------------------------\n";
    auto seq = sum_sequential(values_64k);
    auto rand_ind = sum_random_indexed(values_64k, indices_64k);
    if (seq != rand_ind) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    auto start_seq = std::chrono::steady_clock::now();
    auto checksum_seq = sum_sequential(values_64k);
    auto end_seq = std::chrono::steady_clock::now();
    printStats("SUM SEQUENCE", start_seq, end_seq, checksum_seq, size_64k);
    std::cout << '\n';
    auto start_rand_ind = std::chrono::steady_clock::now();
    auto checksum_rand_ind = sum_random_indexed(values_64k, indices_64k);
    auto end_rand_ind = std::chrono::steady_clock::now();
    printStats("SUM RANDOM ACCESS", start_rand_ind, end_rand_ind, checksum_rand_ind, size_64k);


    printModulo();
    std::cout << "--------------------------1M-----------------------------\n";
    seq = sum_sequential(values_1m);
    rand_ind = sum_random_indexed(values_1m, indices_1m);
    if (seq != rand_ind) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_seq = std::chrono::steady_clock::now();
    checksum_seq = sum_sequential(values_1m);
    end_seq = std::chrono::steady_clock::now();
    printStats("SUM SEQUENCE", start_seq, end_seq, checksum_seq, size_1m);
    std::cout << '\n';
    start_rand_ind = std::chrono::steady_clock::now();
    checksum_rand_ind = sum_random_indexed(values_1m, indices_1m);
    end_rand_ind = std::chrono::steady_clock::now();
    printStats("SUM RANDOM ACCESS", start_rand_ind, end_rand_ind, checksum_rand_ind, size_1m);


    printModulo();
    std::cout << "--------------------------16M-----------------------------\n";
    seq = sum_sequential(values_16m);
    rand_ind = sum_random_indexed(values_16m, indices_16m);
    if (seq != rand_ind) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_seq = std::chrono::steady_clock::now();
    checksum_seq = sum_sequential(values_16m);
    end_seq = std::chrono::steady_clock::now();
    printStats("SUM SEQUENCE", start_seq, end_seq, checksum_seq, size_16m);
    std::cout << '\n';
    start_rand_ind = std::chrono::steady_clock::now();
    checksum_rand_ind = sum_random_indexed(values_16m, indices_16m);
    end_rand_ind = std::chrono::steady_clock::now();
    printStats("SUM RANDOM ACCESS", start_rand_ind, end_rand_ind, checksum_rand_ind, size_16m);


    printModulo();
    std::cout << "--------------------------64M-----------------------------\n";
    seq = sum_sequential(values_64m);
    rand_ind = sum_random_indexed(values_64m, indices_64m);
    if (seq != rand_ind) {
        std::cerr << "results mismatch\n";
        return 1;
    }

    start_seq = std::chrono::steady_clock::now();
    checksum_seq = sum_sequential(values_64m);
    end_seq = std::chrono::steady_clock::now();
    printStats("SUM SEQUENCE", start_seq, end_seq, checksum_seq, size_64m);
    std::cout << '\n';
    start_rand_ind = std::chrono::steady_clock::now();
    checksum_rand_ind = sum_random_indexed(values_64m, indices_64m);
    end_rand_ind = std::chrono::steady_clock::now();
    printStats("SUM RANDOM ACCESS", start_rand_ind, end_rand_ind, checksum_rand_ind, size_64m);

    return 0;
}
