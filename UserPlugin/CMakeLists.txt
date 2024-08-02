
cmake_minimum_required(VERSION 3.10)

project(UserPlugin)

set(CMAKE_CXX_STANDARD 11)

find_package(MyProject REQUIRED)

add_library(UserPlugin SHARED userplugin.cpp)

target_link_libraries(UserPlugin PRIVATE MyProject::MyLibrary)
