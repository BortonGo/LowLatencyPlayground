#pragma once

#include <cerrno>
#include <cstring>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <string>
#include <sys/socket.h>
#include <unistd.h>

namespace llp::net::mac {
    inline bool set_nonblocking(int fd) {
        const int flags = ::fcntl(fd, F_GETFL, 0);
        if (flags == -1) return false;
        return ::fcntl(fd, F_SETFL, flags | O_NONBLOCK) == 0;
    }

    inline bool set_reuse_addr(int fd) {
        int enabled = 1;

        return ::setsockopt(
            fd,
            SOL_SOCKET,
            SO_REUSEADDR,
            reinterpret_cast<const char*>(&enabled),
            sizeof(enabled)
        ) == 0;
    }

    inline bool set_tcp_no_delay(int fd) {
        int enabled = 1;
        return ::setsockopt(
            fd,
            IPPROTO_TCP,
            TCP_NODELAY,
            reinterpret_cast<const char*>(&enabled),
            sizeof(enabled)
        ) == 0;
    }

    inline bool set_recv_buffer(int fd, int bytes) {
        return ::setsockopt(
            fd,
            SOL_SOCKET,
            SO_RCVBUF,
            reinterpret_cast<const char*>(&bytes),
            sizeof(bytes)
        ) == 0;
    }

    inline bool set_send_buffer(int fd, int bytes) {
        return ::setsockopt(
            fd,
            SOL_SOCKET,
            SO_SNDBUF,
            reinterpret_cast<const char*>(&bytes),
            sizeof(bytes)
        ) == 0;
    }

    inline std::string last_socket_error() {
        return std::strerror(errno);
    }
}