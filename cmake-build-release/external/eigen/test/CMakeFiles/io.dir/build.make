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
CMAKE_BINARY_DIR = /Volumes/disk2/ChenhuiLib/cmake-build-release

# Include any dependencies generated for this target.
include external/eigen/test/CMakeFiles/io.dir/depend.make
# Include the progress variables for this target.
include external/eigen/test/CMakeFiles/io.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/test/CMakeFiles/io.dir/flags.make

external/eigen/test/CMakeFiles/io.dir/io.cpp.o: external/eigen/test/CMakeFiles/io.dir/flags.make
external/eigen/test/CMakeFiles/io.dir/io.cpp.o: ../external/eigen/test/io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/test/CMakeFiles/io.dir/io.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io.dir/io.cpp.o -c /Volumes/disk2/ChenhuiLib/external/eigen/test/io.cpp

external/eigen/test/CMakeFiles/io.dir/io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io.dir/io.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/external/eigen/test/io.cpp > CMakeFiles/io.dir/io.cpp.i

external/eigen/test/CMakeFiles/io.dir/io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io.dir/io.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/external/eigen/test/io.cpp -o CMakeFiles/io.dir/io.cpp.s

# Object files for target io
io_OBJECTS = \
"CMakeFiles/io.dir/io.cpp.o"

# External object files for target io
io_EXTERNAL_OBJECTS =

../build/bin/io: external/eigen/test/CMakeFiles/io.dir/io.cpp.o
../build/bin/io: external/eigen/test/CMakeFiles/io.dir/build.make
../build/bin/io: external/eigen/test/CMakeFiles/io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/bin/io"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/eigen/test/CMakeFiles/io.dir/build: ../build/bin/io
.PHONY : external/eigen/test/CMakeFiles/io.dir/build

external/eigen/test/CMakeFiles/io.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/io.dir/cmake_clean.cmake
.PHONY : external/eigen/test/CMakeFiles/io.dir/clean

external/eigen/test/CMakeFiles/io.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/test /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/test/CMakeFiles/io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/test/CMakeFiles/io.dir/depend

