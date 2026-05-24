#pragma once
#include <chrono>
#include <numeric>
#include <vector>
#include <algorithm>
#include <stdexcept>
#include <cmath>

namespace llp {
    class LatencyStats {
        std::vector<std::chrono::nanoseconds> samples;
    public:
        using Sample = std::chrono::nanoseconds;

        void reserve(std::size_t t) {
            samples.reserve(t);
        }

        void add_sample(Sample sample) {
            samples.push_back(sample);
        }
        std::size_t count() const noexcept {
            return samples.size();
        }
        bool empty() const noexcept {
            return samples.empty();
        }

        Sample min() const {
            if (samples.empty()) throw std::runtime_error("Samples buffer is empty");
            return *std::min_element(samples.begin(), samples.end());
        }
        Sample max() const {
            if (samples.empty()) throw std::runtime_error("Samples buffer is empty");
            return *std::max_element(samples.begin(), samples.end());
        }
        Sample mean() const {
            if (samples.empty()) throw std::runtime_error("Samples buffer is empty");
            auto acc = std::accumulate(samples.begin(), samples.end(), static_cast<Sample>(0));
            return acc/samples.size();
        }
        Sample median() const {
            if (samples.empty()) throw std::runtime_error("Samples buffer is empty");
            std::vector<Sample> s = samples;
            std::ranges::sort(s);
            return (s.size() % 2 == 0) ? (s[s.size()/2] + s[(s.size()/2) - 1])/2 : s[s.size()/2];
        }
        Sample percentile(double p) const {
            if (p < 0.0 || p > 100.0) throw std::out_of_range("p < 0 or p > 100");
            if (samples.empty()) throw std::runtime_error("Samples buffer is empty");
            std::vector<Sample> s = samples;
            std::ranges::sort(s);
            if (p == 0.0) return s.front();
            auto idx = static_cast<std::size_t>(std::ceil((p / 100.0) * s.size()) - 1);
            if (idx > s.size() - 1) {
                idx = static_cast<int>(s.size()) - 1;
            }
            return s[idx];
        }

        void clear() {
            samples.clear();
        }
    };
}
