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
include external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/depend.make
# Include the progress variables for this target.
include external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/flags.make

external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o: external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/flags.make
external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o: external/eigen/doc/snippets/compile_PartialRedux_sum.cpp
external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o: ../external/eigen/doc/snippets/PartialRedux_sum.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o -c /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets/compile_PartialRedux_sum.cpp

external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets/compile_PartialRedux_sum.cpp > CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.i

external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets/compile_PartialRedux_sum.cpp -o CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.s

# Object files for target compile_PartialRedux_sum
compile_PartialRedux_sum_OBJECTS = \
"CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o"

# External object files for target compile_PartialRedux_sum
compile_PartialRedux_sum_EXTERNAL_OBJECTS =

../build/bin/compile_PartialRedux_sum: external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/compile_PartialRedux_sum.cpp.o
../build/bin/compile_PartialRedux_sum: external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/build.make
../build/bin/compile_PartialRedux_sum: external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/compile_PartialRedux_sum"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_PartialRedux_sum.dir/link.txt --verbose=$(VERBOSE)
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && ../../../../../build/bin/compile_PartialRedux_sum >/Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets/PartialRedux_sum.out

# Rule to build all files generated by this target.
external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/build: ../build/bin/compile_PartialRedux_sum
.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/build

external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_PartialRedux_sum.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/clean

external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/doc/snippets /Volumes/disk2/ChenhuiLib/cmake-build-debug /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets /Volumes/disk2/ChenhuiLib/cmake-build-debug/external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_PartialRedux_sum.dir/depend

