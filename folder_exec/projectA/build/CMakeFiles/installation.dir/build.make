# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mavaylon/Research/cpp_playground/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mavaylon/Research/cpp_playground/build

# Utility rule file for installation.

# Include any custom commands dependencies for this target.
include CMakeFiles/installation.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/installation.dir/progress.make

CMakeFiles/installation:
	pip install numpy && echo Package\ installed\ successfully.

installation: CMakeFiles/installation
installation: CMakeFiles/installation.dir/build.make
.PHONY : installation

# Rule to build all files generated by this target.
CMakeFiles/installation.dir/build: installation
.PHONY : CMakeFiles/installation.dir/build

CMakeFiles/installation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/installation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/installation.dir/clean

CMakeFiles/installation.dir/depend:
	cd /Users/mavaylon/Research/cpp_playground/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mavaylon/Research/cpp_playground/source /Users/mavaylon/Research/cpp_playground/source /Users/mavaylon/Research/cpp_playground/build /Users/mavaylon/Research/cpp_playground/build /Users/mavaylon/Research/cpp_playground/build/CMakeFiles/installation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/installation.dir/depend
