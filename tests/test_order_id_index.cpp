#include "llp/order_id_index.hpp"
#include "gtest/gtest.h"

TEST(OrderIdIndex, EmptyFindRejected) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 230;

    EXPECT_TRUE(oii.empty());
    EXPECT_FALSE(oii.find(10, level_idx));
    EXPECT_EQ(level_idx, 230);
}

TEST(OrderIdIndex, InsertFind) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 230;

    EXPECT_TRUE(oii.insert(20, 100));
    EXPECT_TRUE(oii.find(20, level_idx));
    EXPECT_EQ(level_idx, 100);
}

TEST(OrderIdIndex, DupplicateInsertRejected) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 230;

    EXPECT_TRUE(oii.insert(20, 100));
    EXPECT_FALSE(oii.insert(20, 320));

    EXPECT_TRUE(oii.find(20, level_idx));
    EXPECT_EQ(level_idx, 100);
}

TEST(OrderIdIndex, EraseExisting) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 230;

    EXPECT_TRUE(oii.insert(13, 320));
    EXPECT_TRUE(oii.erase(13));

    EXPECT_FALSE(oii.find(13, level_idx));
    EXPECT_EQ(level_idx, 230);
}

TEST(OrderIdIndex, EraseMissingRejected) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 230;

    EXPECT_TRUE(oii.insert(13, 320));
    EXPECT_FALSE(oii.erase(20));

    EXPECT_TRUE(oii.find(13, level_idx));
    EXPECT_EQ(level_idx, 320);
}

TEST(OrderIdIndex, OutOfRangeRejected) {
    llp::DenseOrderIdIndex oii(100);
    EXPECT_FALSE(oii.insert(101, 101));
}

TEST(OrderIdIndex, ClearResetStates) {
    llp::DenseOrderIdIndex oii(100);
    std::uint64_t level_idx = 0;

    EXPECT_TRUE(oii.insert(20, 2));
    EXPECT_TRUE(oii.insert(30, 3));
    EXPECT_TRUE(oii.insert(40, 4));

    EXPECT_TRUE(oii.find(20, level_idx));
    EXPECT_EQ(level_idx, 2);
    EXPECT_TRUE(oii.find(30, level_idx));
    EXPECT_EQ(level_idx, 3);
    EXPECT_TRUE(oii.find(40, level_idx));
    EXPECT_EQ(level_idx, 4);

    EXPECT_TRUE(oii.clear());

    EXPECT_FALSE(oii.find(20, level_idx));
    EXPECT_EQ(level_idx, 4);
    EXPECT_FALSE(oii.find(30, level_idx));
    EXPECT_EQ(level_idx, 4);
    EXPECT_FALSE(oii.find(40, level_idx));
    EXPECT_EQ(level_idx, 4);

}
