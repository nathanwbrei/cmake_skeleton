

# Generate config file referencing targets file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/ParentConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/cmake/ParentConfig.cmake
    INSTALL_DESTINATION cmake
)

# Install config file
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/cmake/ParentConfig.cmake
    DESTINATION cmake)

# Install targets file (containing exports)
install(EXPORT ParentTargets
    FILE ParentTargets.cmake
    NAMESPACE Parent::
    DESTINATION cmake)

# Install AddExternalPlugin.cmake
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/cmake/AddExternalPlugin.cmake
    DESTINATION cmake)
