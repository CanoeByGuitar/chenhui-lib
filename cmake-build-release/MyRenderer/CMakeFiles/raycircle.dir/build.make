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
include MyRenderer/CMakeFiles/raycircle.dir/depend.make

# Include the progress variables for this target.
include MyRenderer/CMakeFiles/raycircle.dir/progress.make

# Include the compile flags for this target's objects.
include MyRenderer/CMakeFiles/raycircle.dir/flags.make

MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o: MyRenderer/CMakeFiles/raycircle.dir/flags.make
MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o: ../MyRenderer/test/RayCircleIntersect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o -c /home/wch/github/chenhui-lib/MyRenderer/test/RayCircleIntersect.cpp

MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/MyRenderer/test/RayCircleIntersect.cpp > CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.i

MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/MyRenderer/test/RayCircleIntersect.cpp -o CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.s

# Object files for target raycircle
raycircle_OBJECTS = \
"CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o"

# External object files for target raycircle
raycircle_EXTERNAL_OBJECTS =

../build/bin/raycircle: MyRenderer/CMakeFiles/raycircle.dir/test/RayCircleIntersect.cpp.o
../build/bin/raycircle: MyRenderer/CMakeFiles/raycircle.dir/build.make
../build/bin/raycircle: MyRenderer/CMakeFiles/raycircle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../build/bin/raycircle"
	cd /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raycircle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MyRenderer/CMakeFiles/raycircle.dir/build: ../build/bin/raycircle

.PHONY : MyRenderer/CMakeFiles/raycircle.dir/build

MyRenderer/CMakeFiles/raycircle.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer && $(CMAKE_COMMAND) -P CMakeFiles/raycircle.dir/cmake_clean.cmake
.PHONY : MyRenderer/CMakeFiles/raycircle.dir/clean

MyRenderer/CMakeFiles/raycircle.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/MyRenderer /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer /home/wch/github/chenhui-lib/cmake-build-release/MyRenderer/CMakeFiles/raycircle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MyRenderer/CMakeFiles/raycircle.dir/depend

