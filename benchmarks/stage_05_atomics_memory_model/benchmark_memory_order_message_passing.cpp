#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <atomic>
#include <string_view>

constexpr std::size_t message_count = 1'000'000;

struct Payload {
    std::uint64_t sequence;
    std::uint64_t price;
    std::uint64_t quantity;
};

Payload payload{};
std::atomic<bool> ready = false;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(message_count)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "elapsed(ms) = " << std::chrono::duration_cast<std::chrono::milliseconds>(elapsed) << '\n';
    std::cout << "throughput(msg/sec) = " << throughput << '\n';
}

void run_release_acquire(std::string_view name) {
    std::uint64_t checksum = 0;
    const auto START = std::chrono::steady_clock::now();
    std::thread prod([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (ready.load(std::memory_order_acquire)) {
           }
           payload.price = i%100;
           payload.sequence = i%25;
           payload.quantity = i%3;
           ready.store(true, std::memory_order_release);
       }
    });
    std::thread cons([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (!ready.load(std::memory_order_acquire)) {
           }
           checksum += payload.price + payload.quantity + payload.sequence;
           ready.store(false, std::memory_order_release);
       }
    });
    prod.join();
    cons.join();
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, checksum);
}

void run_relaxed(std::string_view name) {
    std::uint64_t checksum = 0;
    const auto START = std::chrono::steady_clock::now();
    std::thread prod([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (ready.load(std::memory_order_relaxed)) {
           }
           payload.price = i%100;
           payload.sequence = i%25;
           payload.quantity = i%3;
           ready.store(true, std::memory_order_relaxed);
       }
    });
    std::thread cons([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (!ready.load(std::memory_order_relaxed)) {
           }
           checksum += payload.price + payload.quantity + payload.sequence;
           ready.store(false, std::memory_order_relaxed);
       }
    });
    prod.join();
    cons.join();
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, checksum);
}

void run_seq_cst(std::string_view name) {
    std::uint64_t checksum = 0;
    const auto START = std::chrono::steady_clock::now();
    std::thread prod([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (ready.load(std::memory_order_seq_cst)) {
           }
           payload.price = i%100;
           payload.sequence = i%25;
           payload.quantity = i%3;
           ready.store(true, std::memory_order_seq_cst);
       }
    });
    std::thread cons([&]() {
       for (std::size_t i = 0; i < message_count; ++i) {
           while (!ready.load(std::memory_order_seq_cst)) {
           }
           checksum += payload.price + payload.quantity + payload.sequence;
           ready.store(false, std::memory_order_seq_cst);
       }
    });
    prod.join();
    cons.join();
    const auto END = std::chrono::steady_clock::now();
    printStats(name, START, END, checksum);
}


int main() {
    run_release_acquire("RELEASE ACQUIRE");
    std::cout << '\n';
    payload = {};
    ready.store(false, std::memory_order_relaxed);
    run_seq_cst("SEQ_CST");
    std::cout << '\n';
    payload = {};
    ready.store(false, std::memory_order_relaxed);
    run_relaxed("RELAXED(FOR STUDYING)");
    std::cout << '\n';

    return 0;
}