
add_library(MyLibrary SHARED mylibrary.cpp)

set_target_properties(MyLibrary PROPERTIES
    PUBLIC_HEADER "mylibrary.h"
    EXPORT_NAME MyLibrary)

install(TARGETS MyLibrary
    EXPORT MyProjectTargets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    PUBLIC_HEADER DESTINATION include)


