#include "gtest/gtest.h"
#include "Driver.h"

TEST(TestCaseName, TestName) {
    Driver fakeDriver;
    fakeDriver.setName("Mark");

    ASSERT_EQ(fakeDriver.getName(), "Mark");
}

TEST(TestCaseName, TestID) {
    Driver fakeDriver;
    fakeDriver.setID(1234);

    ASSERT_EQ(fakeDriver.getID(), 1234);
}

TEST(TestCaseName, TestDriveCar) {
    Driver fakeDriver;

    ASSERT_TRUE(fakeDriver.driveCar());
}

TEST(TestCaseName, TestDriveBus) {
    Driver fakeDriver;

    ASSERT_TRUE(fakeDriver.driveBus());
}

TEST(TestCaseName, TestFlyAirplane) {
    Driver fakeDriver;

    ASSERT_FALSE(fakeDriver.flyAirplane());
}