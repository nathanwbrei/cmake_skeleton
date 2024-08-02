
add_library(MyLibrary SHARED mylibrary.cpp)

set_target_properties(MyLibrary PROPERTIES
    PUBLIC_HEADER "mylibrary.h"
    EXPORT_NAME MyLibrary)

target_include_directories(MyLibrary
    PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include>)

install(TARGETS MyLibrary
    EXPORT MyProjectTargets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    PUBLIC_HEADER DESTINATION include)


