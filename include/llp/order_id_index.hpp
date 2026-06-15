#pragma once
#include <vector>
#include <cstdint>
#include <cstddef>
#include <algorithm>
#include <limits>

namespace llp {
    constexpr std::uint64_t missing = std::numeric_limits<std::uint64_t>::max();

    class DenseOrderIdIndex {
        std::vector<std::uint64_t> order_idx;
        std::uint64_t non_empty_id = 0;
    public:
        explicit DenseOrderIdIndex(std::size_t max_order_id) : order_idx(max_order_id, missing) {}
        bool insert(std::uint64_t order_id, std::uint64_t level_idx) {
            if (order_id >= order_idx.size()) return false;
            if (order_idx[order_id] != missing) return false;
            order_idx[order_id] = level_idx;
            ++non_empty_id;
            return true;
        }
        bool find(std::uint64_t order_id, std::uint64_t& level_idx) const {
            if (order_id >= order_idx.size()) return false;
            if (order_idx[order_id] == missing) return false;
            level_idx = order_idx[order_id];
            return true;
        }
        bool erase(std::uint64_t order_id) {
            if (order_id >= order_idx.size()) return false;
            if (order_idx[order_id] == missing) return false;
            order_idx[order_id] = missing;
            --non_empty_id;
            return true;
        }
        bool empty() const noexcept {
            return non_empty_id == 0;
        }

        bool clear() noexcept {
            std::fill(order_idx.begin(), order_idx.end(), missing);
            non_empty_id = 0;
            return true;
        }
    };
}