add_library(PluginB SHARED pluginb.cpp)

target_link_libraries(PluginB PRIVATE MyLibrary)

install(TARGETS PluginB
    EXPORT MyProjectTargets
    LIBRARY DESTINATION plugins)


