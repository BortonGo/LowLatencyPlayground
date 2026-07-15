#pragma once

#ifndef _WIN32
#error "This header is Windows-only"
#endif

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#include <winsock2.h>
#include <ws2tcpip.h>
#include <string>

namespace llp::net::win {
    inline bool set_nonblocking(SOCKET socket) {
        u_long mode = 1;
        return ioctlsocket(socket, FIONBIO, &mode) == 0;
    }

    inline bool set_reuse_addr(SOCKET socket) {
        int enabled = 1;
        return setsockopt(
            socket,
            SOL_SOCKET,
            SO_REUSEADDR,
            reinterpret_cast<const char*>(&enabled),
            sizeof(enabled)
        ) == 0;
    }

    inline bool set_tcp_no_delay(SOCKET socket) {
        int enabled = 1;
        return setsockopt(
            socket,
            IPPROTO_TCP,
            TCP_NODELAY,
            reinterpret_cast<const char*>(&enabled),
            sizeof(enabled)
        ) == 0;
    }

    inline bool set_recv_buffer(SOCKET socket, int bytes) {
        return setsockopt(
            socket,
            SOL_SOCKET,
            SO_RCVBUF,
            reinterpret_cast<const char*>(&bytes),
            sizeof(bytes)
        ) == 0;
    }

    inline bool set_send_buffer(SOCKET socket, int bytes) {
        return setsockopt(
            socket,
            SOL_SOCKET,
            SO_SNDBUF,
            reinterpret_cast<const char*>(&bytes),
            sizeof(bytes)
        ) == 0;
    }

    inline std::string last_socket_error() {
        return "WSA error: " + std::to_string(WSAGetLastError());
    }
}