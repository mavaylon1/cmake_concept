cmake_minimum_required(VERSION 3.10)
project(projectB)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Add the installation prefix of MyLibrary to CMAKE_PREFIX_PATH
list(APPEND CMAKE_PREFIX_PATH "../../install")

# Find the MyLibrary package
find_package(MyLibrary REQUIRED)

# Include the library subdirectory
add_subdirectory(psana)

# Export the library
install(TARGETS peaks
        EXPORT peaksTargets
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
)

# Export the include directory
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/psana/include/ DESTINATION include)

# Generate and install the export file for the library
install(EXPORT peaksTargets
    FILE peaksTargets.cmake
    NAMESPACE peaks::
    DESTINATION lib/cmake/peaks
)

message(${CMAKE_CURRENT_SOURCE_DIR})

# Generate the peaksConfig.cmake file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/peaksConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/peaksConfig.cmake
    INSTALL_DESTINATION lib/cmake/peaks
)

# Install the MyLibraryConfig.cmake file
install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/peaksConfig.cmake
    DESTINATION lib/cmake/peaks
)
