add_library(PluginB SHARED pluginb.cpp)

target_link_libraries(PluginB PRIVATE MyLibrary)

install(TARGETS PluginB
    LIBRARY DESTINATION plugins)
