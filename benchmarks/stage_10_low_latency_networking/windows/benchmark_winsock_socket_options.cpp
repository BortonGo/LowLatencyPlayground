#include "llp/net/windows/winsock_runtime.hpp"
#include "llp/net/windows/socket_utils.hpp"

#include <iostream>

int main() {
    llp::net::win::WinsockRuntime winsock;
    if (!winsock.ok()) {
        std::cerr << "WSAStartup failed\n";
        return 1;
    }

    SOCKET socket = ::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (socket == INVALID_SOCKET) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }

    if (!llp::net::win::set_reuse_addr(socket)) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }
    if (!llp::net::win::set_tcp_no_delay(socket)) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }
    if (!llp::net::win::set_recv_buffer(socket, 1 << 20)) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }
    if (!llp::net::win::set_send_buffer(socket, 1 << 20)) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }
    if (!llp::net::win::set_nonblocking(socket)) {
        std::cerr << llp::net::win::last_socket_error();
        return 1;
    }

    int value = 0;
    int value_size = sizeof(value);

    getsockopt(socket, SOL_SOCKET, SO_RCVBUF,
               reinterpret_cast<char*>(&value), &value_size);
    std::cout << "SO_RCVBUF: " << value << '\n';

    int no_delay = 0;
    int no_delay_size = sizeof(no_delay);

    getsockopt(socket, IPPROTO_TCP, TCP_NODELAY,
               reinterpret_cast<char*>(&no_delay), &no_delay_size);
    std::cout << "TCP_NODELAY: " << no_delay << '\n';


    std::cout << "socket options applied\n";

    closesocket(socket);
    return 0;
}
