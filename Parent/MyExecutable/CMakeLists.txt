
add_executable(MyExecutable main.cpp)

target_link_libraries(MyExecutable PRIVATE MyLibrary)

set_target_properties(MyExecutable PROPERTIES
    SKIP_BUILD_RPATH FALSE
    BUILD_WITH_INSTALL_RPATH FALSE
    INSTALL_RPATH_USE_LINK_PATH TRUE
    INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/plugins:${CMAKE_INSTALL_PREFIX}/lib
)

install(TARGETS MyExecutable
    EXPORT ParentTargets
    RUNTIME DESTINATION bin)


