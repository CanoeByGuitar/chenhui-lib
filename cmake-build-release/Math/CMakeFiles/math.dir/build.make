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
include Math/CMakeFiles/math.dir/depend.make

# Include the progress variables for this target.
include Math/CMakeFiles/math.dir/progress.make

# Include the compile flags for this target's objects.
include Math/CMakeFiles/math.dir/flags.make

Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.o: Math/CMakeFiles/math.dir/flags.make
Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.o: ../Math/LinearSystemSolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math.dir/LinearSystemSolver.cpp.o -c /home/wch/github/chenhui-lib/Math/LinearSystemSolver.cpp

Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math.dir/LinearSystemSolver.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/Math/LinearSystemSolver.cpp > CMakeFiles/math.dir/LinearSystemSolver.cpp.i

Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math.dir/LinearSystemSolver.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/Math/LinearSystemSolver.cpp -o CMakeFiles/math.dir/LinearSystemSolver.cpp.s

# Object files for target math
math_OBJECTS = \
"CMakeFiles/math.dir/LinearSystemSolver.cpp.o"

# External object files for target math
math_EXTERNAL_OBJECTS =

../build/lib/libmath.a: Math/CMakeFiles/math.dir/LinearSystemSolver.cpp.o
../build/lib/libmath.a: Math/CMakeFiles/math.dir/build.make
../build/lib/libmath.a: Math/CMakeFiles/math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../build/lib/libmath.a"
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && $(CMAKE_COMMAND) -P CMakeFiles/math.dir/cmake_clean_target.cmake
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Math/CMakeFiles/math.dir/build: ../build/lib/libmath.a

.PHONY : Math/CMakeFiles/math.dir/build

Math/CMakeFiles/math.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/Math && $(CMAKE_COMMAND) -P CMakeFiles/math.dir/cmake_clean.cmake
.PHONY : Math/CMakeFiles/math.dir/clean

Math/CMakeFiles/math.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/Math /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/Math /home/wch/github/chenhui-lib/cmake-build-release/Math/CMakeFiles/math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Math/CMakeFiles/math.dir/depend

