cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(test LANGUAGES CXX VERSION 0.1.0)

# set(CMAKE_FIND_DEBUG_MODE 1)

################################################################

set(CMAKE_PREFIX_PATH /opt/systemc)
find_package(SystemCLanguage CONFIG REQUIRED)
find_package(SystemCTLM CONFIG REQUIRED)

add_executable(test-systemc.x test-systemc.cc)
target_link_libraries(test-systemc.x SystemC::systemc)

