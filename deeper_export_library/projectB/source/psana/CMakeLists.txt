cmake_minimum_required(VERSION 3.10)

# Add the installation prefix of MyLibrary to CMAKE_PREFIX_PATH
list(APPEND CMAKE_PREFIX_PATH "../../install")

# Find the MyLibrary package
find_package(MyLibrary REQUIRED)

set(SOURCES
    src/code.cc)

add_library(peaks SHARED ${SOURCES})

# Specify the include directories for the library
target_include_directories(peaks
    PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/psana/include>
           $<INSTALL_INTERFACE:include>
)

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

# Generate the peaksConfig.cmake file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_SOURCE_DIR}/cmake/peaksConfig.cmake.in
    ${CMAKE_BINARY_DIR}/peaksConfig.cmake
    INSTALL_DESTINATION lib/cmake/peaks
)

# Install the MyLibraryConfig.cmake file
install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/peaksConfig.cmake
    DESTINATION lib/cmake/peaks
)

# Link the executable with the MyLibrary library
target_link_libraries(peaks PUBLIC MyLibrary::MyLibrary)

add_custom_command(TARGET peaks
                   POST_BUILD
                   COMMAND echo "pip install")
