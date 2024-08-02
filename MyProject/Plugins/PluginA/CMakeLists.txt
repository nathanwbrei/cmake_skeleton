
add_library(PluginA SHARED plugina.cpp)

set_target_properties(PluginA PROPERTIES
    PUBLIC_HEADER plugina.hpp
    EXPORT_NAME PluginA)

target_include_directories(PluginA
    PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include/plugins/PluginA>)

target_link_libraries(PluginA PUBLIC MyLibrary)

install(TARGETS PluginA 
    EXPORT MyProjectTargets 
    PUBLIC_HEADER DESTINATION include/plugins/PluginA
    LIBRARY DESTINATION plugins)


