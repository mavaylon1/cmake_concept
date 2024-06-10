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

install(TARGETS peaks
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)

# Link the executable with the MyLibrary library
target_link_libraries(peaks PUBLIC MyLibrary::MyLibrary)

add_custom_command(TARGET peaks
                   POST_BUILD
                   COMMAND echo "pip install")
