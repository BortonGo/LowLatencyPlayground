#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <vector>
#include <string_view>
#include <llp/binary_feed_parser.hpp>

constexpr std::size_t message_count = 1'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, std::uint64_t errors) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(message_count)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "errors = " << errors << '\n';
    std::cout << "elapsed(mcs) = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput(msg/sec) = " << throughput << '\n';
}

void run_parser(std::string_view name) {
    std::uint64_t checksum = 0;
    std::uint64_t errors = 0;
    llp::BinaryFeedParser parser;
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
    for (std::size_t i = 0; i < message_count; ++i) {
        auto* msg = buffer.data() + i * llp::BinaryFeedParser::message_size;
        llp::MarketDataMessage out{};
        if (parser.parse(msg, llp::BinaryFeedParser::message_size, out)) {
            checksum += out.price + out.quantity + out.symbol_id;
        } else {
            ++errors;
        }
    }
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, checksum, errors);
}

int main() {
    run_parser("BINARY FEED PARSER");
    return 0;
}