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
CMAKE_SOURCE_DIR = /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build

# Include any dependencies generated for this target.
include CMakeFiles/MyLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyLibrary.dir/flags.make

CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o: CMakeFiles/MyLibrary.dir/flags.make
CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o: /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source/library/src/MyLibrary.cpp
CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o: CMakeFiles/MyLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o -MF CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o.d -o CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o -c /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source/library/src/MyLibrary.cpp

CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source/library/src/MyLibrary.cpp > CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.i

CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source/library/src/MyLibrary.cpp -o CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.s

# Object files for target MyLibrary
MyLibrary_OBJECTS = \
"CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o"

# External object files for target MyLibrary
MyLibrary_EXTERNAL_OBJECTS =

libMyLibrary.dylib: CMakeFiles/MyLibrary.dir/library/src/MyLibrary.cpp.o
libMyLibrary.dylib: CMakeFiles/MyLibrary.dir/build.make
libMyLibrary.dylib: CMakeFiles/MyLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libMyLibrary.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyLibrary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyLibrary.dir/build: libMyLibrary.dylib
.PHONY : CMakeFiles/MyLibrary.dir/build

CMakeFiles/MyLibrary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyLibrary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyLibrary.dir/clean

CMakeFiles/MyLibrary.dir/depend:
	cd /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectA/build/CMakeFiles/MyLibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyLibrary.dir/depend

