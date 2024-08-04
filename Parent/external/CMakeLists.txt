
add_library(UnitTestFramework INTERFACE)

target_include_directories(UnitTestFramework INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include/${PROJECT_NAME}/external>
)

install(FILES test_framework.hpp
    DESTINATION include/${PROJECT_NAME}/external)

install(TARGETS UnitTestFramework
    EXPORT ParentTargets
    DESTINATION include/${PROJECT_NAME}/external)


