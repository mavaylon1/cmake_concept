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

# Include any dependencies generated for this target.
include CMakeFiles/AnotherProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AnotherProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AnotherProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AnotherProject.dir/flags.make

CMakeFiles/AnotherProject.dir/main.cpp.o: CMakeFiles/AnotherProject.dir/flags.make
CMakeFiles/AnotherProject.dir/main.cpp.o: /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source/main.cpp
CMakeFiles/AnotherProject.dir/main.cpp.o: CMakeFiles/AnotherProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AnotherProject.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AnotherProject.dir/main.cpp.o -MF CMakeFiles/AnotherProject.dir/main.cpp.o.d -o CMakeFiles/AnotherProject.dir/main.cpp.o -c /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source/main.cpp

CMakeFiles/AnotherProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnotherProject.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source/main.cpp > CMakeFiles/AnotherProject.dir/main.cpp.i

CMakeFiles/AnotherProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnotherProject.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source/main.cpp -o CMakeFiles/AnotherProject.dir/main.cpp.s

# Object files for target AnotherProject
AnotherProject_OBJECTS = \
"CMakeFiles/AnotherProject.dir/main.cpp.o"

# External object files for target AnotherProject
AnotherProject_EXTERNAL_OBJECTS =

AnotherProject: CMakeFiles/AnotherProject.dir/main.cpp.o
AnotherProject: CMakeFiles/AnotherProject.dir/build.make
AnotherProject: /usr/local/lib/libMyLibrary.1.0.0.dylib
AnotherProject: CMakeFiles/AnotherProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AnotherProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AnotherProject.dir/link.txt --verbose=$(VERBOSE)
	echo pip\ install

# Rule to build all files generated by this target.
CMakeFiles/AnotherProject.dir/build: AnotherProject
.PHONY : CMakeFiles/AnotherProject.dir/build

CMakeFiles/AnotherProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AnotherProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AnotherProject.dir/clean

CMakeFiles/AnotherProject.dir/depend:
	cd /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/source /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build /Users/mavaylon/Research/cpp_playground/cmake_concept/export_library/projectB/build/CMakeFiles/AnotherProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AnotherProject.dir/depend

