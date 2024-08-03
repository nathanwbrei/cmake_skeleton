

# Generate config file referencing targets file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/MyProjectConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/cmake/MyProjectConfig.cmake
    INSTALL_DESTINATION cmake
)

# Install config file
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/cmake/MyProjectConfig.cmake
    DESTINATION cmake)

# Install targets file (containing exports)
install(EXPORT MyProjectTargets
    FILE MyProjectTargets.cmake
    NAMESPACE MyProject::
    DESTINATION cmake)

# Install AddPlugin.cmake
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/cmake/AddPlugin.cmake
    DESTINATION cmake)
