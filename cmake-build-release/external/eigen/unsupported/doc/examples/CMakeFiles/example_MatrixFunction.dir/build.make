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
include external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/depend.make

# Include the progress variables for this target.
include external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/flags.make

external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o: external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/flags.make
external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o: ../external/eigen/unsupported/doc/examples/MatrixFunction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && /usr/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/unsupported/doc/examples/MatrixFunction.cpp

external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/unsupported/doc/examples/MatrixFunction.cpp > CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.i

external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/unsupported/doc/examples/MatrixFunction.cpp -o CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.s

# Object files for target example_MatrixFunction
example_MatrixFunction_OBJECTS = \
"CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o"

# External object files for target example_MatrixFunction
example_MatrixFunction_EXTERNAL_OBJECTS =

../build/bin/example_MatrixFunction: external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/MatrixFunction.cpp.o
../build/bin/example_MatrixFunction: external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/build.make
../build/bin/example_MatrixFunction: external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../../build/bin/example_MatrixFunction"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_MatrixFunction.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && ../../../../../../build/bin/example_MatrixFunction >/home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples/MatrixFunction.out

# Rule to build all files generated by this target.
external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/build: ../build/bin/example_MatrixFunction

.PHONY : external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/build

external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/example_MatrixFunction.dir/cmake_clean.cmake
.PHONY : external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/clean

external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/unsupported/doc/examples /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/unsupported/doc/examples/CMakeFiles/example_MatrixFunction.dir/depend

