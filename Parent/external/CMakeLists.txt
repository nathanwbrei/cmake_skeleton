
add_library(UnitTestFramework INTERFACE)

target_include_directories(UnitTestFramework INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include/external>
)

install(FILES test_framework.hpp
        DESTINATION include/external)

install(TARGETS UnitTestFramework
        EXPORT ParentTargets
        DESTINATION include/external)


