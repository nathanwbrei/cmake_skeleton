
add_library(PluginB SHARED pluginb.cpp)

set_target_properties(PluginB PROPERTIES
    PUBLIC_HEADER pluginb.hpp
    EXPORT_NAME PluginB)

target_include_directories(MyLibrary
    PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include/plugins/PluginB>)

    target_link_libraries(PluginB PRIVATE PluginA MyLibrary)

install(TARGETS PluginB
    EXPORT MyProjectTargets
    PUBLIC_HEADER DESTINATION include/plugins/PluginB
    LIBRARY DESTINATION plugins)


