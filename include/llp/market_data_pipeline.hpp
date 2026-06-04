#pragma once
#include <cstddef>
#include "llp/spsc_queue.hpp"
#include "llp/binary_feed_parser.hpp"

namespace llp {
    struct PipelineStats {
        std::uint64_t parsed = 0;
        std::uint64_t parse_errors = 0;
        std::uint64_t pushed = 0;
        std::uint64_t failed_pushes = 0;
        std::uint64_t consumed = 0;
        std::uint64_t checksum = 0;
    };

    class MarketDataPipeline {
        PipelineStats stats_;
        SPSCQueue<MarketDataMessage> queue;
        BinaryFeedParser parser;
    public:
        explicit MarketDataPipeline(std::size_t queue_capacity) : queue(queue_capacity) {}

        bool submit(const std::byte* data, std::size_t size) {
            MarketDataMessage msg{};
            if (!parser.parse(data, size, msg)) {
                ++stats_.parse_errors;
                return false;
            }
            if (queue.full()) {
                ++stats_.failed_pushes;
                return false;
            }
            if (!queue.push(msg)) {
                ++stats_.failed_pushes;
                return false;
            }
            ++stats_.parsed;
            ++stats_.pushed;
            return true;
        }
        bool poll(MarketDataMessage& out) {
            if (queue.pop(out)) {
                ++stats_.consumed;
                stats_.checksum += out.price + out.quantity + out.symbol_id;
                return true;
            }
            return false;
        }

        const PipelineStats& stats() const noexcept {
            return stats_;
        }
    };
}
