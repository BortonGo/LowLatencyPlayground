#include "llp/spsc_queue.hpp"
#include "gtest/gtest.h"
#include <stdexcept>

TEST(SPSCQueue, Constructor) {
    EXPECT_THROW(llp::SPSCQueue<int> q(0), std::invalid_argument);
    EXPECT_THROW(llp::SPSCQueue<int> q(5), std::invalid_argument);
}

TEST(SPSCQueue, Push_Pop) {
    llp::SPSCQueue<int> q(16);
    q.push(1);
    int n;
    q.pop(n);
    EXPECT_EQ(n, 1);
}

TEST(SPSCQueue, FIFO) {
    llp::SPSCQueue<int> q(16);
    q.push(1);
    q.push(2);
    q.push(3);
    q.push(4);
    int n;
    q.pop(n);
    EXPECT_EQ(n, 1);
    q.pop(n);
    EXPECT_EQ(n, 2);
    q.pop(n);
    EXPECT_EQ(n, 3);
    q.pop(n);
    EXPECT_EQ(n, 4);
}

TEST(SPSCQueue, Full) {
    llp::SPSCQueue<int> q(16);
    EXPECT_EQ(q.full(), false);
    for (int i = 0; i < q.capacity(); ++i) {
        q.push(i);
    }
    EXPECT_EQ(q.full(), true);
}

TEST(SPSCQueue, EmptyPop) {
    llp::SPSCQueue<int> q(16);
    int n = 0;
    EXPECT_EQ(q.pop(n), false);
}

TEST(SPSCQueue, WrapAround) {
    llp::SPSCQueue<int> q(4);
    EXPECT_EQ(q.push(1), true);
    EXPECT_EQ(q.push(2), true);
    EXPECT_EQ(q.push(3), true);
    EXPECT_EQ(q.push(4), true);
    int n = 0;
    EXPECT_EQ(q.pop(n), true);
    EXPECT_EQ(n, 1);
    EXPECT_EQ(q.pop(n), true);
    EXPECT_EQ(n, 2);
    EXPECT_EQ(q.push(5), true);
    EXPECT_EQ(q.pop(n), true);
    EXPECT_EQ(n, 3);
    EXPECT_EQ(q.pop(n), true);
    EXPECT_EQ(n, 4);
    EXPECT_EQ(q.pop(n), true);
    EXPECT_EQ(n, 5);
    EXPECT_EQ(q.empty(), true);
}

TEST(SPSCQueue, Capacity) {
    llp::SPSCQueue<int> q(16);
    EXPECT_EQ(q.capacity(), 16);
}