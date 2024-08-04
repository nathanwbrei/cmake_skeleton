
add_library(UnitTestFramework INTERFACE)

target_include_directories(UnitTestFramework INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include/external>
)
install(TARGETS UnitTestFramework
        EXPORT MyProjectTargets
        DESTINATION include/external)

