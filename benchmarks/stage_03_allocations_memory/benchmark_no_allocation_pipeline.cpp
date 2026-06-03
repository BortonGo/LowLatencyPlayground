#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <vector>
#include "llp/benchmark_timer.hpp"

constexpr std::size_t input_count = 100'000;

llp::BenchmarkConfig config{
    .warmup_iterations = 1'000,
    .measured_iterations = 10'000
};

struct BenchmarkResult {
    llp::LatencyStats stats;
    std::uint64_t checksum = 0;
    std::uint64_t output_count = 0;
};

struct InputMessage {
    std::uint64_t sequence;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t type;
};

void fill(std::vector<InputMessage>& vec) {
    for (std::size_t i = 0; i < input_count; ++i) {
        InputMessage msg{};
        msg.sequence = i;
        msg.price = static_cast<std::uint32_t>(100 + (i % 100));
        msg.quantity = static_cast<std::uint32_t>(1 + (i % 50));
        msg.type = (i % 4 == 0) ? 1 : 0;
        vec.push_back(msg);
    }
}

struct OutputEvent {
    std::uint64_t sequence;
    std::uint64_t notional;
};

void print_stats(std::string_view name, const llp::LatencyStats& stats) {
    std::cout << name << '\n';
    std::cout << "Count: " << stats.count() << '\n';
    std::cout << "Min: " << stats.min() << '\n';
    std::cout << "Max: " << stats.max() << '\n';
    std::cout << "Mean: " << stats.mean() << '\n';
    std::cout << "Median: " << stats.median() << '\n';
    std::cout << "p95: " << stats.percentile(95.0) << '\n';
    std::cout << "p99: " << stats.percentile(99.0) << '\n';
    std::cout << "p99.9: " << stats.percentile(99.9) << '\n';
    std::cout << "p99.99: " << stats.percentile(99.99) << '\n';
    std::cout << "p99.999: " << stats.percentile(99.999) << '\n';
}

BenchmarkResult run_no_allocation() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::uint64_t checksum = 0;
    std::uint64_t output_count = 0;
    std::vector<InputMessage> input_buf;
    input_buf.reserve(input_count);
    fill(input_buf);
    std::vector<OutputEvent> output_buf(input_count);
    std::size_t output_size = 0;
    result.stats = timer.run([&]() {
        output_size = 0;
        for (auto im : input_buf) {
            if (im.type == 1) {
                OutputEvent event{im.sequence, im.price * im.quantity};
                output_buf[output_size] = event;
                checksum += output_buf[output_size].sequence;
                checksum += output_buf[output_size].notional;
                ++output_size;
                ++output_count;
            }
        }
    });
    result.checksum = checksum;
    result.output_count = output_count;
    return result;
}

BenchmarkResult run_with_allocation() {
    llp::BenchmarkTimer timer(config);
    BenchmarkResult result;
    std::uint64_t checksum = 0;
    std::uint64_t output_count = 0;
    std::vector<InputMessage> input_buf;
    input_buf.reserve(input_count);
    fill(input_buf);
    result.stats = timer.run([&]() {
        std::vector<OutputEvent> output_buf;
        for (auto im : input_buf) {
            if (im.type == 1) {
                OutputEvent event{im.sequence, im.price * im.quantity};
                output_buf.push_back(event);
                checksum += output_buf.back().sequence;
                checksum += output_buf.back().notional;
                ++output_count;
            }
        }
    });
    result.checksum = checksum;
    result.output_count = output_count;
    return result;
}

int main() {
    auto all = run_with_allocation();
    auto no_all = run_no_allocation();

    print_stats("=== WITH ALLOCATIONS ===", all.stats);
    std::cout << "checksum: " << all.checksum << '\n';
    std::cout << "output_count: " << all.output_count << '\n';

    print_stats("=== WITHOUT ALLOCATIONS ===", no_all.stats);
    std::cout << "checksum: " << no_all.checksum << '\n';
    std::cout << "output_count: " << no_all.output_count << '\n';

    return 0;
}
