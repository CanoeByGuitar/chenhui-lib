# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wch/github/chenhui-lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wch/github/chenhui-lib/cmake-build-debug

# Include any dependencies generated for this target.
include external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/depend.make

# Include the progress variables for this target.
include external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make

external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make
external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: ../external/eigen/bench/spbench/spbenchsolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/bench/spbench/spbenchsolver.cpp

external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/bench/spbench/spbenchsolver.cpp > CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i

external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/bench/spbench/spbenchsolver.cpp -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s

# Object files for target spbenchsolver
spbenchsolver_OBJECTS = \
"CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"

# External object files for target spbenchsolver
spbenchsolver_EXTERNAL_OBJECTS =

../build/bin/spbenchsolver: external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o
../build/bin/spbenchsolver: external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/build.make
../build/bin/spbenchsolver: /usr/lib/x86_64-linux-gnu/librt.so
../build/bin/spbenchsolver: external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/spbenchsolver"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spbenchsolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/build: ../build/bin/spbenchsolver

.PHONY : external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/build

external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench && $(CMAKE_COMMAND) -P CMakeFiles/spbenchsolver.dir/cmake_clean.cmake
.PHONY : external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/clean

external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/bench/spbench /home/wch/github/chenhui-lib/cmake-build-debug /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/bench/spbench/CMakeFiles/spbenchsolver.dir/depend

