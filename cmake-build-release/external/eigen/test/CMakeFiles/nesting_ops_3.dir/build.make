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
CMAKE_BINARY_DIR = /home/wch/github/chenhui-lib/cmake-build-release

# Include any dependencies generated for this target.
include external/eigen/test/CMakeFiles/nesting_ops_3.dir/depend.make

# Include the progress variables for this target.
include external/eigen/test/CMakeFiles/nesting_ops_3.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/test/CMakeFiles/nesting_ops_3.dir/flags.make

external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o: external/eigen/test/CMakeFiles/nesting_ops_3.dir/flags.make
external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o: ../external/eigen/test/nesting_ops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/test/nesting_ops.cpp

external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/test/nesting_ops.cpp > CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.i

external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/test/nesting_ops.cpp -o CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.s

# Object files for target nesting_ops_3
nesting_ops_3_OBJECTS = \
"CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o"

# External object files for target nesting_ops_3
nesting_ops_3_EXTERNAL_OBJECTS =

../build/bin/nesting_ops_3: external/eigen/test/CMakeFiles/nesting_ops_3.dir/nesting_ops.cpp.o
../build/bin/nesting_ops_3: external/eigen/test/CMakeFiles/nesting_ops_3.dir/build.make
../build/bin/nesting_ops_3: external/eigen/test/CMakeFiles/nesting_ops_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/bin/nesting_ops_3"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nesting_ops_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/eigen/test/CMakeFiles/nesting_ops_3.dir/build: ../build/bin/nesting_ops_3

.PHONY : external/eigen/test/CMakeFiles/nesting_ops_3.dir/build

external/eigen/test/CMakeFiles/nesting_ops_3.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/nesting_ops_3.dir/cmake_clean.cmake
.PHONY : external/eigen/test/CMakeFiles/nesting_ops_3.dir/clean

external/eigen/test/CMakeFiles/nesting_ops_3.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/test /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/test/CMakeFiles/nesting_ops_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/test/CMakeFiles/nesting_ops_3.dir/depend

