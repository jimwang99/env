cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(test LANGUAGES CXX VERSION 0.1.0)

# set(CMAKE_FIND_DEBUG_MODE 1)

################################################################

find_package(glog CONFIG REQUIRED)

add_executable(test-glog.x test-glog.cc)
target_link_libraries(test-glog.x glog::glog)

add_custom_target(mytest ./test-glog.x)
