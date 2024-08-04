
macro(add_plugin plugin_name)

    # Parse remaining arguments
    set(options)
    set(oneValueArgs)
    set(multiValueArgs SOURCES PUBLIC_HEADER TESTS)

    cmake_parse_arguments(PLUGIN "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    # Set up target
    add_library(${plugin_name} SHARED ${PLUGIN_SOURCES})

    set_target_properties(${plugin_name} PROPERTIES
        EXPORT_NAME ${plugin_name}
        SKIP_BUILD_RPATH FALSE
        BUILD_WITH_INSTALL_RPATH FALSE
        INSTALL_RPATH_USE_LINK_PATH TRUE
        INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib:${CMAKE_INSTALL_PREFIX}/lib/${PROJECT_NAME}/plugins
    )

    target_link_libraries(${plugin_name} PUBLIC MyLibrary)

    # Handle public headers
    if (PLUGIN_PUBLIC_HEADER)
        set_target_properties(${plugin_name} PROPERTIES 
            PUBLIC_HEADER "${PLUGIN_PUBLIC_HEADER}"
        )
        target_include_directories(${plugin_name}
            PUBLIC
                $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                $<INSTALL_INTERFACE:include/${PROJECT_NAME}/plugins/${plugin_name}>
        )
    endif()

    # Install target
    install(TARGETS ${plugin_name}
        EXPORT ParentTargets
        PUBLIC_HEADER DESTINATION include/${PROJECT_NAME}/plugins/${plugin_name}
        LIBRARY DESTINATION lib/${PROJECT_NAME}/plugins
    )

    # Handle tests
    if (PLUGIN_TESTS)
        add_executable(${plugin_name}_tests ${PLUGIN_TESTS})
        target_link_libraries(${plugin_name}_tests PRIVATE ${plugin_name} UnitTestFramework)
        set_target_properties(${plugin_name}_tests PROPERTIES
            SKIP_BUILD_RPATH FALSE
            BUILD_WITH_INSTALL_RPATH FALSE
            INSTALL_RPATH_USE_LINK_PATH TRUE
            INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib:${CMAKE_INSTALL_PREFIX}/lib/${PROJECT_NAME}/plugins
        )
        install(TARGETS ${plugin_name}_tests RUNTIME DESTINATION bin)
        add_test(NAME ${plugin_name}_tests COMMAND ${CMAKE_INSTALL_PREFIX}/bin/${plugin_name}_tests)
    endif()
endmacro()


