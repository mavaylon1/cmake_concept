cmake_minimum_required(VERSION 3.10)

# Project name
project(MyLibrary)

# Define the library
add_library(MyLibrary SHARED
    library/src/MyLibrary.cpp
)

# Specify the include directories for the library
target_include_directories(MyLibrary
    PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/library/include>
           $<INSTALL_INTERFACE:include>
)

# Export the library
install(TARGETS MyLibrary
    EXPORT MyLibraryTargets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
)

# Export the include directory
install(DIRECTORY library/include/ DESTINATION include)

# Generate and install the export file for the library
install(EXPORT MyLibraryTargets
    FILE MyLibraryTargets.cmake
    NAMESPACE MyLibrary::
    DESTINATION lib/cmake/MyLibrary
)

# Generate the MyLibraryConfig.cmake file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/MyLibraryConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfig.cmake
    INSTALL_DESTINATION lib/cmake/MyLibrary
)

# Install the MyLibraryConfig.cmake file
install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfig.cmake
    DESTINATION lib/cmake/MyLibrary
)
