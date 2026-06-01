#include <llp/ring_buffer.hpp>
#include "gtest/gtest.h"

TEST(RingBuffer, Push) {
    llp::RingBuffer<int> rb_int(5);
    EXPECT_EQ(rb_int.empty(), true);
    rb_int.push(5);
    EXPECT_EQ(rb_int.size(), 1);
    rb_int.push(5);
    EXPECT_EQ(rb_int.size(), 2);
}
TEST(RingBuffer, Pop) {
    llp::RingBuffer<int> rb_int(5);
    EXPECT_EQ(rb_int.empty(), true);
    rb_int.push(5);
    rb_int.push(10);
    EXPECT_EQ(rb_int.empty(), false);
    int n = 0;
    EXPECT_EQ(rb_int.pop(n), true);
    EXPECT_EQ(n, 5);
    EXPECT_EQ(rb_int.pop(n), true);
    EXPECT_EQ(n, 10);
    EXPECT_EQ(rb_int.empty(), true);
    EXPECT_EQ(rb_int.pop(n), false);
}
TEST(RingBuffer, PushFull) {
    llp::RingBuffer<int> rb_int(1);
    EXPECT_EQ(rb_int.empty(), true);
    rb_int.push(5);
    EXPECT_EQ(rb_int.full(), true);
    EXPECT_EQ(rb_int.push(5), false);
}
TEST(RingBuffer, WrapAround) {
    llp::RingBuffer<int> rb_int(2);
    EXPECT_EQ(rb_int.empty(), true);
    rb_int.push(5);
    rb_int.push(10);
    EXPECT_EQ(rb_int.empty(), false);
    int n = 0;
    EXPECT_EQ(rb_int.pop(n), true);
    EXPECT_EQ(n, 5);
    rb_int.push(12);
    EXPECT_EQ(rb_int.pop(n), true);
    EXPECT_EQ(n, 10);
    EXPECT_EQ(rb_int.pop(n), true);
    EXPECT_EQ(n, 12);
    EXPECT_EQ(rb_int.empty(), true);
    EXPECT_EQ(rb_int.pop(n), false);
}
TEST(RingBuffer, Clear) {
    llp::RingBuffer<int> rb_int(2);
    EXPECT_EQ(rb_int.empty(), true);
    rb_int.push(5);
    rb_int.push(10);
    EXPECT_EQ(rb_int.empty(), false);
    rb_int.clear();
    EXPECT_EQ(rb_int.empty(), true);
}
