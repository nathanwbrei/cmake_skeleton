
add_plugin(PluginB 
    SOURCES pluginb.cpp
    PUBLIC_HEADER pluginb.hpp)

target_link_libraries(PluginB PUBLIC PluginA)


