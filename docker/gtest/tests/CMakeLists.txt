cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(test LANGUAGES CXX VERSION 0.1.0)

# set(CMAKE_FIND_DEBUG_MODE 1)

################################################################

enable_testing()
find_package(GTest CONFIG  REQUIRED)

add_executable(test-gtest.x test-gtest.cc)
target_link_libraries(test-gtest.x GTest::gtest GTest::gtest_main)

add_custom_target(mytest ./test-gtest.x)

include(GoogleTest)
gtest_discover_tests(test-gtest.x)

