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
include external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/depend.make

# Include the progress variables for this target.
include external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/flags.make

external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o: external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/flags.make
external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o: ../external/eigen/doc/examples/matrixfree_cg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/doc/examples/matrixfree_cg.cpp

external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/doc/examples/matrixfree_cg.cpp > CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.i

external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/doc/examples/matrixfree_cg.cpp -o CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.s

# Object files for target matrixfree_cg
matrixfree_cg_OBJECTS = \
"CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o"

# External object files for target matrixfree_cg
matrixfree_cg_EXTERNAL_OBJECTS =

../build/bin/matrixfree_cg: external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/matrixfree_cg.cpp.o
../build/bin/matrixfree_cg: external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/build.make
../build/bin/matrixfree_cg: external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/matrixfree_cg"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrixfree_cg.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && ../../../../../build/bin/matrixfree_cg >/home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples/matrixfree_cg.out

# Rule to build all files generated by this target.
external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/build: ../build/bin/matrixfree_cg

.PHONY : external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/build

external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/matrixfree_cg.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/clean

external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-debug /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/examples/CMakeFiles/matrixfree_cg.dir/depend

