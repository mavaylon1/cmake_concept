cmake_minimum_required(VERSION 3.10)

# Project name
project(AnotherProject)

# Add the installation prefix of MyLibrary to CMAKE_PREFIX_PATH
list(APPEND CMAKE_PREFIX_PATH "../../install")

# Find the MyLibrary package
find_package(MyLibrary REQUIRED)

# Define the executable
add_executable(AnotherProject main.cpp)

# Link the executable with the MyLibrary library
target_link_libraries(AnotherProject PUBLIC MyLibrary::MyLibrary)

add_custom_command(TARGET AnotherProject
                   POST_BUILD
                   COMMAND echo "pip install")
