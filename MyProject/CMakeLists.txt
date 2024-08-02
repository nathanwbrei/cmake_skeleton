
cmake_minimum_required(VERSION 3.10)
project(MyProject)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Add subdirectories
add_subdirectory(MyLibrary)
add_subdirectory(MyExecutable)
add_subdirectory(Plugins)

# Export all targets
include(cmake/ExportTargets.cmake)
