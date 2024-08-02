# Export all plugin targets
install(EXPORT MyLibraryTargets
    FILE MyLibraryTargets.cmake
    NAMESPACE MyProject::
    DESTINATION cmake)

export(TARGETS PluginA PluginB
    FILE "${CMAKE_CURRENT_BINARY_DIR}/MyProjectPlugins.cmake")

install(EXPORT MyProjectPlugins
    FILE MyProjectPlugins.cmake
    NAMESPACE MyProject::
    DESTINATION cmake)
