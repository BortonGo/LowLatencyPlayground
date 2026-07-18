#include "llp/net/macos/socket_utils.hpp"
#include "llp/net/macos/tcp_socket.hpp"
#include "llp/latency_stats.hpp"

#include <thread>
#include <iostream>
#include <cstring>
#include <vector>

constexpr std::size_t message_size = 32;
constexpr std::size_t iterations = 10'000;

bool send_all(llp::net::mac::TcpSocket& socket,
              const void* data,
              std::size_t size) {
    const auto* bytes = static_cast<const char*>(data);
    std::size_t sent_total = 0;

    while (sent_total < size) {
        const ssize_t sent =
            socket.send_some(bytes + sent_total, size - sent_total);

        if (sent <= 0) {
            return false;
        }

        sent_total += static_cast<std::size_t>(sent);
    }

    return true;
}

bool recv_all(llp::net::mac::TcpSocket& socket,
              void* data,
              std::size_t size) {
    auto* bytes = static_cast<char*>(data);
    std::size_t received_total = 0;

    while (received_total < size) {
        const ssize_t received =
            socket.recv_some(bytes + received_total, size - received_total);

        if (received <= 0) {
            return false;
        }

        received_total += static_cast<std::size_t>(received);
    }

    return true;
}

int main() {
    constexpr std::uint16_t port = 9000;

    llp::net::mac::TcpSocket listener;
    llp::net::mac::set_reuse_addr(listener.fd());

    sockaddr_in address{};
    address.sin_family = AF_INET;
    address.sin_port = htons(port);
    address.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    if (::bind(listener.fd(),
               reinterpret_cast<const sockaddr*>(&address),
               sizeof(address)) == -1) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }

    if (::listen(listener.fd(), 1) == -1) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }

    llp::net::mac::TcpSocket client;

    if (::connect(client.fd(),
                  reinterpret_cast<const sockaddr*>(&address),
                  sizeof(address)) == -1) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }

    std::thread server([&] {
        sockaddr_in client_address{};
        socklen_t client_address_size = sizeof(client_address);

        const int client_fd = ::accept(
            listener.fd(),
            reinterpret_cast<sockaddr*>(&client_address),
            &client_address_size
        );

        if (client_fd == -1) {
            std::cerr << llp::net::mac::last_socket_error();
            return;
        }

        llp::net::mac::TcpSocket server_client(client_fd);

        char server_buffer[message_size]{};

        for (std::size_t i = 0; i < iterations; ++i) {
                if (!recv_all(server_client, server_buffer, sizeof(server_buffer))) {
                return;
            }

            if (!send_all(server_client, server_buffer, sizeof(server_buffer))) {
                return;
            }
        }
    });

    int exit_code = 0;

    llp::LatencyStats rtts;
    rtts.reserve(iterations);

    char request[message_size] = "hello from client";
    char response[message_size]{};

    for (std::size_t i = 0; i < iterations; ++i) {
        const auto started_at = std::chrono::steady_clock::now();

        if (!send_all(client, request, sizeof(request))) {
            client.close();
            exit_code = 1;
            break;
        }

        if (!recv_all(client, response, sizeof(response))) {
            client.close();
            exit_code = 1;
            break;
        }

        const auto rtt = std::chrono::duration_cast<std::chrono::nanoseconds>(
        std::chrono::steady_clock::now() - started_at);

        if (std::memcmp(request, response, sizeof(request)) != 0) {
            std::cerr << "echo mismatch\n";
            client.close();
            exit_code = 1;
            break;
        }

        rtts.add_sample(rtt);
    }

    server.join();

    if (exit_code == 0) {
        std::cout << "count: " << rtts.count() << '\n';
        std::cout << "median: " << rtts.median() << '\n';
        std::cout << "p95: " << rtts.percentile(95.0) << '\n';
        std::cout << "p99: " << rtts.percentile(99.0) << '\n';
    }

    return exit_code;
}