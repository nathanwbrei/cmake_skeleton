
add_library(PluginB SHARED pluginb.cpp)

set_target_properties(PluginB PROPERTIES
    PUBLIC_HEADER pluginb.hpp
    EXPORT_NAME PluginB
    SKIP_BUILD_RPATH FALSE
    BUILD_WITH_INSTALL_RPATH FALSE
    INSTALL_RPATH_USE_LINK_PATH TRUE
    INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/plugins:${CMAKE_INSTALL_PREFIX}/lib
)

target_include_directories(PluginB
    PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include/plugins/PluginB>)

target_link_libraries(PluginB PUBLIC PluginA MyLibrary)

install(TARGETS PluginB
    EXPORT MyProjectTargets
    PUBLIC_HEADER DESTINATION include/plugins/PluginB
    LIBRARY DESTINATION plugins)


