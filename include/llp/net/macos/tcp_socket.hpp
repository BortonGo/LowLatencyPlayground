#pragma once
#include "llp/net/macos/socket_utils.hpp"
#include <stdexcept>
#include <utility>

namespace llp::net::mac {
    class TcpSocket {
        int fd_{-1};
    public:
        TcpSocket() {
            fd_ = socket(AF_INET, SOCK_STREAM, 0);
            if (fd_ == -1) {
                throw std::runtime_error("Fd = -1");
            }
        }
        explicit TcpSocket(int fd) : fd_(fd) {
            if (fd_ == -1) {
                throw std::runtime_error("Fd == -1");
            }
        }
        ~TcpSocket() {
            close();
        }

        TcpSocket(const TcpSocket&) = delete;
        TcpSocket& operator=(const TcpSocket&) = delete;

        TcpSocket(TcpSocket&& other) noexcept {
            std::swap(fd_, other.fd_);
        }
        TcpSocket& operator=(TcpSocket&& other) noexcept {
            if (this != &other) {
                close();
                std::swap(fd_, other.fd_);
            }
            return *this;
        }

        [[nodiscard]] int fd() const {
            return fd_;
        }
        [[nodiscard]] bool valid() const {
            return fd_ != -1;
        }

        bool set_nonblocking() {
            return llp::net::mac::set_nonblocking(fd_);
        }
        bool set_no_delay() {
            return llp::net::mac::set_tcp_no_delay(fd_);
        }
        ssize_t send_some(const void* data, std::size_t size) {
            return ::send(fd_, data, size, 0);
        }
        ssize_t recv_some(void* data, std::size_t size) {
            return ::recv(fd_, data, size, 0);
        }
        void close() {
            if (valid()) {
                ::close(fd_);
                fd_ = -1;
            }
        }
    };
}