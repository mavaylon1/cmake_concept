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
CMAKE_SOURCE_DIR = /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build

# Utility rule file for MyLibraryHeaders.

# Include any custom commands dependencies for this target.
include CMakeFiles/MyLibraryHeaders.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyLibraryHeaders.dir/progress.make

MyLibraryHeaders: CMakeFiles/MyLibraryHeaders.dir/build.make
.PHONY : MyLibraryHeaders

# Rule to build all files generated by this target.
CMakeFiles/MyLibraryHeaders.dir/build: MyLibraryHeaders
.PHONY : CMakeFiles/MyLibraryHeaders.dir/build

CMakeFiles/MyLibraryHeaders.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyLibraryHeaders.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyLibraryHeaders.dir/clean

CMakeFiles/MyLibraryHeaders.dir/depend:
	cd /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build/CMakeFiles/MyLibraryHeaders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyLibraryHeaders.dir/depend
