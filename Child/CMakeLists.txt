
cmake_minimum_required(VERSION 3.10)

project(Child)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(CTest)
find_package(Parent REQUIRED)

add_plugin(PluginC SOURCES pluginc.cpp)

add_plugin(PluginD SOURCES plugind.cpp TESTS plugind_tests.cpp)

target_link_libraries(PluginD PRIVATE Parent::PluginB)


