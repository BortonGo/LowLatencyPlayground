#include <iostream>
#include <cstdint>
#include <cstddef>
#include <string_view>
#include <thread>
#include <vector>
#include <chrono>
#include "llp/latency_stats.hpp"
#include "llp/spsc_queue.hpp"

constexpr std::size_t message_count = 1'000'000;
constexpr std::size_t buffer_capacity = 1024;

struct Message {
    std::uint64_t sequence;
    std::uint32_t price;
    std::uint32_t quantity;
    std::uint8_t type;
};

void fill(std::vector<Message>& vec) {
    for (std::size_t i = 0; i < message_count; ++i) {
        Message msg{};
        msg.sequence = i;
        msg.price = static_cast<std::uint32_t>(100 + (i % 100));
        msg.quantity = static_cast<std::uint32_t>(1 + (i % 50));
        msg.type = (i % 4 == 0) ? 1 : 0;
        vec.push_back(msg);
    }
}

void run() {
    std::uint64_t checksum = 0;
    std::vector<Message> input_buf;
    input_buf.reserve(message_count);
    fill(input_buf);
    llp::SPSCQueue<Message> q(buffer_capacity);
    auto start = std::chrono::steady_clock::now();
    std::thread t1([&]() {
        for (int i = 0; i < message_count-1; ++i) {
            while (!q.push(input_buf[i])) {
            }
        }
    });
    std::thread t2([&]() {
        for (int i = 0; i < message_count-1; ++i) {
            Message m{};
            while (!q.pop(m)) {
            }
            checksum += m.price + m.quantity + m.sequence + m.type;
        }
    });
    t1.join();
    t2.join();
    auto end = std::chrono::steady_clock::now();
    std::cout << "=== SPSC QUEUE ===" << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed(ns) = " << std::chrono::duration_cast<std::chrono::nanoseconds>(end - start) << '\n';
}
int main() {
    run();
    return 0;
}

