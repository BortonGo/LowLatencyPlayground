#include <iostream>
#include <vector>
#include <algorithm>
#include <cstdint>
#include <cstddef>
#include <random>
#include <chrono>
#include <string_view>

constexpr std::size_t size_vec = 200'000;

void printStats(
    std::string_view name,
    std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END,
    std::size_t oper_cnt
) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(oper_cnt) / elapsed_seconds;

    std::cout << name << '\n';
    std::cout << "elapsed = "
              << std::chrono::duration_cast<std::chrono::microseconds>(elapsed).count()
              << " us\n";
    std::cout << "throughput_ops_sec = " << throughput << '\n';
}

std::vector<std::uint64_t> generate_vectors(std::size_t size) {
    std::vector<std::uint64_t> vec;
    vec.reserve(size);

    std::mt19937 rng(42);

    for (std::size_t i = 0; i < size; ++i) {
        vec.push_back(i);
    }

    std::shuffle(vec.begin(), vec.end(), rng);
    return vec;
}

void run_basic(std::vector<std::uint64_t>& vec) {
    for (auto it = vec.begin(); it != vec.end();) {
        if (*it % 2 == 0) {
            it = vec.erase(it);
        } else {
            ++it;
        }
    }
}

void run_remove_if(std::vector<std::uint64_t>& vec) {
    auto new_end = std::remove_if(
        vec.begin(),
        vec.end(),
        [](std::uint64_t x) {
            return x % 2 == 0;
        }
    );

    vec.erase(new_end, vec.end());
}

void run_erase_if(std::vector<std::uint64_t>& vec) {
    std::erase_if(
        vec,
        [](std::uint64_t x) {
            return x % 2 == 0;
        }
    );
}

int main() {
    std::vector<std::uint64_t> vec1 = generate_vectors(size_vec);
    std::vector<std::uint64_t> vec2 = vec1;
    std::vector<std::uint64_t> vec3 = vec1;

    auto start = std::chrono::steady_clock::now();
    run_basic(vec1);
    auto end = std::chrono::steady_clock::now();
    printStats("BASIC", start, end, size_vec);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    run_remove_if(vec2);
    end = std::chrono::steady_clock::now();
    printStats("REMOVE_IF + ERASE", start, end, size_vec);
    std::cout << '\n';

    start = std::chrono::steady_clock::now();
    run_erase_if(vec3);
    end = std::chrono::steady_clock::now();
    printStats("ERASE_IF", start, end, size_vec);
    std::cout << '\n';

    return 0;
}