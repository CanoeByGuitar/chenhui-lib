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
include external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/depend.make

# Include the progress variables for this target.
include external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/flags.make

external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o: external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/flags.make
external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o: external/eigen/doc/snippets/compile_Map_general_stride.cpp
external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o: ../external/eigen/doc/snippets/Map_general_stride.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o -c /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets/compile_Map_general_stride.cpp

external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets/compile_Map_general_stride.cpp > CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.i

external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets/compile_Map_general_stride.cpp -o CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.s

# Object files for target compile_Map_general_stride
compile_Map_general_stride_OBJECTS = \
"CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o"

# External object files for target compile_Map_general_stride
compile_Map_general_stride_EXTERNAL_OBJECTS =

../build/bin/compile_Map_general_stride: external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/compile_Map_general_stride.cpp.o
../build/bin/compile_Map_general_stride: external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/build.make
../build/bin/compile_Map_general_stride: external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/compile_Map_general_stride"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_Map_general_stride.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && ../../../../../build/bin/compile_Map_general_stride >/home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets/Map_general_stride.out

# Rule to build all files generated by this target.
external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/build: ../build/bin/compile_Map_general_stride

.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/build

external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_Map_general_stride.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/clean

external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/doc/snippets /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/snippets/CMakeFiles/compile_Map_general_stride.dir/depend

