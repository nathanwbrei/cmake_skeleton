
add_executable(MyExecutable main.cpp)

target_link_libraries(MyExecutable PRIVATE MyLibrary)

install(TARGETS MyExecutable
    RUNTIME DESTINATION bin)


