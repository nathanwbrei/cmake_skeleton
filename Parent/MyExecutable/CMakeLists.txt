
add_executable(MyExecutable main.cpp)

target_link_libraries(MyExecutable PRIVATE MyLibrary)

set_target_properties(MyExecutable PROPERTIES
    SKIP_BUILD_RPATH FALSE
    BUILD_WITH_INSTALL_RPATH FALSE
    INSTALL_RPATH_USE_LINK_PATH TRUE
    INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib)

install(TARGETS MyExecutable
    EXPORT ParentTargets
    RUNTIME DESTINATION bin)

add_test(NAME MyExecutable_BuildDir_NoPlugins COMMAND MyExecutable)
add_test(NAME MyExecutable_InstallDir_NoPlugins COMMAND ${CMAKE_INSTALL_PREFIX}/bin/MyExecutable)

add_test(NAME MyExecutable_BuildDir_PluginA COMMAND MyExecutable PluginA/libPluginA.so)
add_test(NAME MyExecutable_InstallDir_PluginA COMMAND 
    ${CMAKE_INSTALL_PREFIX}/bin/MyExecutable ${CMAKE_INSTALL_PREFIX}/plugins/libPluginA.so)

add_test(NAME MyExecutable_BuildDir_PluginB COMMAND MyExecutable PluginA/libPluginB.so)
add_test(NAME MyExecutable_InstallDir_PluginB COMMAND 
    ${CMAKE_INSTALL_PREFIX}/bin/MyExecutable ${CMAKE_INSTALL_PREFIX}/plugins/libPluginB.so)

add_test(NAME MyExecutable_BuildDir_PluginAB COMMAND MyExecutable PluginA/libPluginA.so PluginB/libPluginB.so)
add_test(NAME MyExecutable_InstallDir_PluginAB COMMAND 
    ${CMAKE_INSTALL_PREFIX}/bin/MyExecutable 
    ${CMAKE_INSTALL_PREFIX}/plugins/libPluginA.so 
    ${CMAKE_INSTALL_PREFIX}/plugins/libPluginB.so)
