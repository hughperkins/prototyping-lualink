cmake_minimum_required(VERSION 2.8)

set(HOME $ENV{HOME})
include_directories(${HOME}/torch/install/include)

add_library(mylib SHARED mylib.cpp)


