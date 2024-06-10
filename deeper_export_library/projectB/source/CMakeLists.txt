cmake_minimum_required(VERSION 3.10)
project(projectB)

# Add the installation prefix of MyLibrary to CMAKE_PREFIX_PATH
list(APPEND CMAKE_PREFIX_PATH "../../install")

# Find the MyLibrary package
find_package(MyLibrary REQUIRED)

# Include the library subdirectory
add_subdirectory(psana)
