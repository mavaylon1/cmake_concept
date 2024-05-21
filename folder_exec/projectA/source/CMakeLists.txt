cmake_minimum_required(VERSION 3.26.4)

project(ProjectA)
message("The install prefix path is: ${CMAKE_INSTALL_PREFIX}")
message("The current source path is: ${CMAKE_CURRENT_SOURCE_DIR}")
message("The current binary path is: ${CMAKE_CURRENT_BINARY_DIR}")

set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

add_executable(${PROJECT_NAME} hello.cpp)
add_executable(PipSim bye.cpp)

include(CMakePackageConfigHelpers)

# set install for executable to ProjectATargets export set
# set install in bin since there is no library
install(TARGETS PipSim
    EXPORT ProjectATargets
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)

# set export set to be saved as ProjectATargets.cmake
# set install of ProjectATargets.cmake to be in lib/cmake/ProjectA
install(EXPORT ProjectATargets
        FILE ProjectATargets.cmake
        NAMESPACE ProjectA::
        DESTINATION lib/cmake/ProjectA
    )

message("Exported targets in ProjectATargets:")
get_property(targets GLOBAL PROPERTY ProjectATargets)
message("${targets}")

# set ProjectAConfig.cmake
# This is a config file is used to export the targets.
configure_package_config_file(
    "/Users/mavaylon/Research/cpp_playground/folder_exec/projectA/cmake/ProjectAConfig.cmake.in"
    /Users/mavaylon/Research/cpp_playground/folder_exec/projectA/build/ProjectAConfig.cmake
    INSTALL_DESTINATION lib/cmake/ProjectA
    NO_CHECK_REQUIRED_COMPONENTS_MACRO
)

# copy ProjectAConfig.cmake into lib/cmake/ProjectA
# This is where it is usually stored
