#pragma once

#ifndef _WIN32
#error "This header is Windows-only"
#endif

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#include <winsock2.h>

namespace llp::net::win {
    class WinsockRuntime {
    public:
        WinsockRuntime() {
            WSADATA data {};
            ok_ = WSAStartup(MAKEWORD(2, 2), &data) == 0;
        }
        ~WinsockRuntime() {
            if (ok_) {
                WSACleanup();
            }
        }

        WinsockRuntime(const WinsockRuntime&) = delete;
        WinsockRuntime& operator=(const WinsockRuntime&) = delete;

        [[nodiscard]] bool ok() const {
            return ok_;
        }

    private:
        bool ok_{false};
    };
}