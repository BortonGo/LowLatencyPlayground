#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <vector>
#include <string_view>
#include "llp/market_data_pipeline.hpp"

constexpr std::size_t message_count = 1'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, llp::PipelineStats stats, std::uint64_t checksum) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(stats.consumed)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "consumer checksum = " << checksum << '\n';
    std::cout << "checksum = " << stats.checksum << '\n';
    std::cout << "consumed = " << stats.consumed << '\n';
    std::cout << "parsed = " << stats.parsed << '\n';
    std::cout << "pushed = " << stats.pushed << '\n';
    std::cout << "parse_errors = " << stats.parse_errors << '\n';
    std::cout << "failed_pushes = " << stats.failed_pushes << '\n';
    std::cout << "elapsed(mcs) = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput(msg/sec) = " << throughput << '\n';
}

void run_pipeline_batching(std::string_view name, std::size_t batch_size) {
    std::uint64_t checksum = 0;
    std::size_t batch_count = 0;
    llp::MarketDataPipeline pipeline(1024);
    std::vector<std::byte> buffer;
    buffer.resize(llp::BinaryFeedParser::message_size * message_count);
    for (std::size_t i = 0; i < message_count; ++i) {
        auto* msg = buffer.data() + i * llp::BinaryFeedParser::message_size;
        msg[0] = static_cast<std::byte>(1);
        llp::BinaryFeedParser::write_u32_le(msg + 1, static_cast<std::uint32_t>(i));
        llp::BinaryFeedParser::write_u64_le(msg + 5, 100000 + i);
        llp::BinaryFeedParser::write_u32_le(msg + 13, 10);
        msg[17] = static_cast<std::byte>(1);
    }

    const auto START = std::chrono::steady_clock::now();
    std::thread prod([&]() {
        for (std::size_t i = 0; i < message_count; ++i) {
            auto* msg = buffer.data() + i * llp::BinaryFeedParser::message_size;
            while (!pipeline.submit(msg, llp::BinaryFeedParser::message_size)) {
            }
        }
    });
    std::thread cons([&]() {
       for (std::size_t i = 0; i < message_count; i += batch_size) {
           llp::MarketDataMessage msg{};
           while (batch_count < batch_size && i + batch_count < message_count) {
                while (!pipeline.poll(msg)) {
                }
                checksum += msg.price + msg.quantity + msg.symbol_id;
                ++batch_count;
           }
           batch_count = 0;
       }
    });
    prod.join();
    cons.join();
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, pipeline.stats(), checksum);
}

void printModulo() {
    std::cout << '\n';
    std::cout<< "----------------------------------------------------------" << '\n';
    std::cout << '\n';
}

int main() {
    run_pipeline_batching("BATCH SIZE = 1", 1);
    printModulo();
    run_pipeline_batching("BATCH SIZE = 4", 4);
    printModulo();
    run_pipeline_batching("BATCH SIZE = 16", 16);
    printModulo();
    run_pipeline_batching("BATCH SIZE = 64", 64);
    return 0;
}