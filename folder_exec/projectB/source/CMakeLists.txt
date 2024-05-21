cmake_minimum_required(VERSION 3.26.4)

project(ProjectB)

message("The prefix path is: ${CMAKE_PREFIX_PATH}")
message("The prefix path is: ${CMAKE_MODULE_PATH}")

# list(APPEND CMAKE_PREFIX_PATH "/usr/local")
# list(APPEND CMAKE_PREFIX_PATH "/usr/local/lib/cmake/ProjectA")


find_package(ProjectA REQUIRED)

add_executable(PipSim2 greeting.cpp)
target_link_libraries(PipSim2 ProjectA::PipSim)
