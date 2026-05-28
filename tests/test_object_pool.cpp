#include "llp/object_pool.hpp"
#include <stdexcept>
#include "gtest/gtest.h"

static constexpr std::size_t capacity = 150;

TEST(ObjectPoolTest, StartsWithFullAvailability) {
    llp::ObjectPool<int>* op_int = new llp::ObjectPool<int>(capacity);
    EXPECT_EQ(op_int->capacity(), capacity);
    EXPECT_EQ(op_int->available(), capacity);
    EXPECT_EQ(op_int->empty(), false);
    delete op_int;
}

TEST(ObjectPoolTest, AcquireDecreasesAvailability) {
    llp::ObjectPool<int>* op_int = new llp::ObjectPool<int>(capacity);
    op_int->acquire();
    EXPECT_EQ(op_int->available(), capacity-1);
    delete op_int;
}

TEST(ObjectPoolTest, ReleaseRestoresAvailability) {
    llp::ObjectPool<int>* op_int = new llp::ObjectPool<int>(capacity);
    auto ptr = op_int->acquire();
    op_int->release(ptr);
    EXPECT_EQ(op_int->available(), capacity);
    delete op_int;
}

TEST(ObjectPoolTest, ThrowsWhenExhausted) {
    llp::ObjectPool<int>* op_int = new llp::ObjectPool<int>(1);
    op_int->acquire();
    EXPECT_THROW(op_int->acquire(), std::runtime_error);
    delete op_int;
}

TEST(ObjectPoolTest, ThrowsOnNullRelease) {
    llp::ObjectPool<int>* op_int = new llp::ObjectPool<int>(1);
    EXPECT_THROW(op_int->release(nullptr), std::runtime_error);
    delete op_int;
}

TEST(ObjectPoolTest, ThrowsWhenPointerDoesNotBelongToPool) {
    llp::ObjectPool<int> op_int(capacity);
    int object = 5;
    EXPECT_THROW(op_int.release(&object), std::runtime_error);
}