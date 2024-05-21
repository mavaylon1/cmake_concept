cmake_minimum_required(VERSION 3.0)
project(myproject)

# Set the source directory

# Define the sources and headers
set(SOURCES
    main.cpp
    MyClass.cpp
)

set(HEADERS
  MyClass.h
)

# Add an executable target
add_executable(myexecutable ${SOURCES} ${HEADERS})

# Specify include directories
target_include_directories(myexecutable PUBLIC /Users/mavaylon/Research/cpp_playground/folder_header/projectA/source)
