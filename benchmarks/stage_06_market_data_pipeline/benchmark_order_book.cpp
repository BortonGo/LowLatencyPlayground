#include <iostream>
#include <cstdint>
#include <cstddef>
#include <thread>
#include <chrono>
#include <vector>
#include <string_view>
#include "llp/order_book.hpp"

constexpr std::size_t message_count = 1'000'000;

void printStats(std::string_view name, std::chrono::time_point<std::chrono::steady_clock> START,
    std::chrono::time_point<std::chrono::steady_clock> END, std::uint64_t checksum, const llp::OrderBook& ob) {
    const auto elapsed = END - START;
    const double elapsed_seconds = std::chrono::duration<double>(elapsed).count();
    const double throughput = static_cast<double>(message_count)/elapsed_seconds;
    std::cout << name << '\n';
    std::cout << "checksum = " << checksum << '\n';
    std::cout << "bid levels = " << ob.bid_levels() << '\n';
    std::cout << "ask levels = " << ob.ask_levels() << '\n';
    std::cout << "elapsed(mcs) = " << std::chrono::duration_cast<std::chrono::microseconds>(elapsed) << '\n';
    std::cout << "throughput(updates/sec) = " << throughput << '\n';
}

llp::MarketDataMessage make_add(std::size_t i) {
    llp::MarketDataMessage msg{};
    msg.type = llp::MessageType::Add;
    msg.side = (i % 2 == 0) ? llp::Side::Bid : llp::Side::Ask;
    msg.price = 1000 + (i % 1000);
    msg.quantity = 10;
    msg.symbol_id = 1;
    return msg;
}

llp::MarketDataMessage make_reduce(std::size_t i) {
    llp::MarketDataMessage msg{};
    msg.type = (i % 2 == 0) ? llp::MessageType::Cancel : llp::MessageType::Trade;
    msg.side = (i % 2 == 0) ? llp::Side::Bid : llp::Side::Ask;
    msg.price = 1000 + (i % 1000);
    msg.quantity = 1;
    msg.symbol_id = 1;
    return msg;
}

void run_order_book(std::string_view name) {
    std::uint64_t checksum = 0;
    llp::OrderBook order_book;
    std::vector<llp::MarketDataMessage> buffer;
    buffer.reserve(message_count);
    for (std::size_t i = 0; i < message_count/2; ++i) {
        buffer.push_back(make_add(i));
    }
    for (std::size_t i = 0; i < message_count/2; ++i) {
        buffer.push_back(make_reduce(i));
    }

    const auto START = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < message_count; ++i) {
        llp::BookLevel book_level{};
        order_book.apply(buffer[i]);
        if (buffer[i].side == llp::Side::Ask) {
            order_book.best_ask(book_level);
        } else {
            order_book.best_bid(book_level);
        }
        checksum += book_level.price + book_level.quantity;
    }
    const auto END = std::chrono::steady_clock::now();

    printStats(name, START, END, checksum, order_book);
}

int main() {
    run_order_book("ORDER_BOOK_UPDATE");
    return 0;
}
