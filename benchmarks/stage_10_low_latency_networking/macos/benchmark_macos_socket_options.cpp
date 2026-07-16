#include "llp/net/macos/socket_utils.hpp"

#include <iostream>

int main() {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd == -1) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }

    if (!llp::net::mac::set_reuse_addr(fd)) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }
    if (!llp::net::mac::set_tcp_no_delay(fd)) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }
    if (!llp::net::mac::set_recv_buffer(fd, 1 << 20)) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }
    if (!llp::net::mac::set_send_buffer(fd, 1 << 20)) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }
    if (!llp::net::mac::set_nonblocking(fd)) {
        std::cerr << llp::net::mac::last_socket_error();
        return 1;
    }

    const int flags = ::fcntl(fd, F_GETFL, 0);
    if (flags == -1) {
        std::cerr << "fcntl(F_GETFL) failed: "
                  << llp::net::mac::last_socket_error() << '\n';
        close(fd);
        return 1;
    }

    const bool is_nonblocking = (flags & O_NONBLOCK) != 0;
    std::cout << "O_NONBLOCK: " << is_nonblocking << '\n';

    int value = 0;
    socklen_t value_size = sizeof(value);

    if (::getsockopt(fd, SOL_SOCKET, SO_RCVBUF,
               reinterpret_cast<char*>(&value), &value_size) == -1) {
        std::cerr << "getsockopt failed: " << llp::net::mac::last_socket_error() << '\n';
    }
    std::cout << "SO_RCVBUF: " << value << '\n';

    int value_snd = 0;
    socklen_t value_snd_size = sizeof(value_snd);

    if (::getsockopt(fd, SOL_SOCKET, SO_SNDBUF,
               reinterpret_cast<char*>(&value_snd), &value_snd_size) == -1) {
        std::cerr << "getsockopt failed: " << llp::net::mac::last_socket_error() << '\n';
               }
    std::cout << "SO_SNDBUF: " << value_snd << '\n';

    int no_delay = 0;
    socklen_t no_delay_size = sizeof(no_delay);

    if (::getsockopt(fd, IPPROTO_TCP, TCP_NODELAY,
    reinterpret_cast<char*>(&no_delay), &no_delay_size) == -1) {
        std::cerr << "getsockopt failed: " << llp::net::mac::last_socket_error() << '\n';
    }
    std::cout << "TCP_NODELAY: " << no_delay << '\n';


    std::cout << "socket options applied\n";

    close(fd);
    return 0;
}
