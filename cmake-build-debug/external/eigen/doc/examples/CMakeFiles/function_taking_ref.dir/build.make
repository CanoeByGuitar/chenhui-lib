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
include external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/depend.make

# Include the progress variables for this target.
include external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/flags.make

external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o: external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/flags.make
external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o: ../external/eigen/doc/examples/function_taking_ref.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/doc/examples/function_taking_ref.cpp

external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/doc/examples/function_taking_ref.cpp > CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i

external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && /usr/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/doc/examples/function_taking_ref.cpp -o CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s

# Object files for target function_taking_ref
function_taking_ref_OBJECTS = \
"CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o"

# External object files for target function_taking_ref
function_taking_ref_EXTERNAL_OBJECTS =

../build/bin/function_taking_ref: external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o
../build/bin/function_taking_ref: external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/build.make
../build/bin/function_taking_ref: external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/function_taking_ref"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/function_taking_ref.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && ../../../../../build/bin/function_taking_ref >/home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples/function_taking_ref.out

# Rule to build all files generated by this target.
external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/build: ../build/bin/function_taking_ref

.PHONY : external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/build

external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/function_taking_ref.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/clean

external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-debug /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-debug/external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/examples/CMakeFiles/function_taking_ref.dir/depend

