
add_library(PluginA SHARED plugina.cpp)

target_link_libraries(PluginA PRIVATE MyLibrary)

install(TARGETS PluginA 
    EXPORT MyProjectTargets 
    LIBRARY DESTINATION plugins)


