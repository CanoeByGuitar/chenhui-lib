# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/disk2/ChenhuiLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/disk2/ChenhuiLib/cmake-build-debug

# Include any dependencies generated for this target.
include deps/eigen/test/CMakeFiles/nomalloc_8.dir/depend.make
# Include the progress variables for this target.
include deps/eigen/test/CMakeFiles/nomalloc_8.dir/progress.make

# Include the compile flags for this target's objects.
include deps/eigen/test/CMakeFiles/nomalloc_8.dir/flags.make

deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o: deps/eigen/test/CMakeFiles/nomalloc_8.dir/flags.make
deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o: ../deps/eigen/test/nomalloc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o -c /Volumes/disk2/ChenhuiLib/deps/eigen/test/nomalloc.cpp

deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nomalloc_8.dir/nomalloc.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/deps/eigen/test/nomalloc.cpp > CMakeFiles/nomalloc_8.dir/nomalloc.cpp.i

deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nomalloc_8.dir/nomalloc.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/deps/eigen/test/nomalloc.cpp -o CMakeFiles/nomalloc_8.dir/nomalloc.cpp.s

# Object files for target nomalloc_8
nomalloc_8_OBJECTS = \
"CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o"

# External object files for target nomalloc_8
nomalloc_8_EXTERNAL_OBJECTS =

deps/eigen/test/nomalloc_8: deps/eigen/test/CMakeFiles/nomalloc_8.dir/nomalloc.cpp.o
deps/eigen/test/nomalloc_8: deps/eigen/test/CMakeFiles/nomalloc_8.dir/build.make
deps/eigen/test/nomalloc_8: deps/eigen/test/CMakeFiles/nomalloc_8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nomalloc_8"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nomalloc_8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/eigen/test/CMakeFiles/nomalloc_8.dir/build: deps/eigen/test/nomalloc_8
.PHONY : deps/eigen/test/CMakeFiles/nomalloc_8.dir/build

deps/eigen/test/CMakeFiles/nomalloc_8.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/nomalloc_8.dir/cmake_clean.cmake
.PHONY : deps/eigen/test/CMakeFiles/nomalloc_8.dir/clean

deps/eigen/test/CMakeFiles/nomalloc_8.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/deps/eigen/test /Volumes/disk2/ChenhuiLib/cmake-build-debug /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test /Volumes/disk2/ChenhuiLib/cmake-build-debug/deps/eigen/test/CMakeFiles/nomalloc_8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/eigen/test/CMakeFiles/nomalloc_8.dir/depend

