#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include <random>
#include <algorithm>

constexpr std::size_t size_16m = 16'000'000;
constexpr std::size_t size_1m = 1'000'000;

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

std::byte* align_to_64(std::byte* ptr) {
    auto addr = reinterpret_cast<std::uintptr_t>(ptr);
    addr = (addr + 63) & ~std::uintptr_t{63};
    return reinterpret_cast<std::byte*>(addr);
}

void fill_u64(std::uint64_t* data, std::size_t count) {
    for (std::size_t i = 0; i < count; ++i) {
        data[i] = i % 10'000;
    }
}

std::uint64_t sum_u64(const std::uint64_t* data, std::size_t count) {
    std::uint64_t sum = 0;
    for (std::size_t i = 0; i < count; ++i) {
        sum += data[i];
    }
    return sum;
}

std::uint64_t sum_misaligned_memcpy(const std::byte* data, std::size_t count) {
    std::uint64_t sum = 0;

    for (std::size_t i = 0; i < count; ++i) {
        std::uint64_t value;
        std::memcpy(&value, data + i * sizeof(std::uint64_t), sizeof(value));
        sum += value;
    }

    return sum;
}

void run_case(std::string_view size_name, std::size_t count) {
    const std::size_t bytes = count * sizeof(std::uint64_t);

    std::vector<std::byte> buffer(bytes + 128);

    std::byte* base = align_to_64(buffer.data());

    auto* aligned = reinterpret_cast<std::uint64_t*>(base + 0);
    auto* offset8 = reinterpret_cast<std::uint64_t*>(base + 8);
    auto* offset16 = reinterpret_cast<std::uint64_t*>(base + 16);
    auto* offset32 = reinterpret_cast<std::uint64_t*>(base + 32);

    fill_u64(aligned, count + 4);

    std::cout << "---------------- " << size_name << " ----------------\n";

    auto start = std::chrono::steady_clock::now();
    auto checksum = sum_u64(aligned, count);
    auto end = std::chrono::steady_clock::now();
    printStats("ALIGNED OFFSET 0", start, end, checksum, count);

    start = std::chrono::steady_clock::now();
    checksum = sum_u64(offset8, count);
    end = std::chrono::steady_clock::now();
    printStats("OFFSET 8", start, end, checksum, count);

    start = std::chrono::steady_clock::now();
    checksum = sum_u64(offset16, count);
    end = std::chrono::steady_clock::now();
    printStats("OFFSET 16", start, end, checksum, count);

    start = std::chrono::steady_clock::now();
    checksum = sum_u64(offset32, count);
    end = std::chrono::steady_clock::now();
    printStats("OFFSET 32", start, end, checksum, count);

    start = std::chrono::steady_clock::now();
    checksum = sum_misaligned_memcpy(base + 1, count);
    end = std::chrono::steady_clock::now();
    printStats("OFFSET 1 MEMCPY", start, end, checksum, count);
}

int main() {
    constexpr std::size_t count_1m = 1'000'000;
    constexpr std::size_t count_16m = 16'000'000;

    run_case("1M", count_1m);
    std::cout << '\n';
    run_case("16M", count_16m);

    return 0;
}


