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
include MyRenderer/CMakeFiles/vectest.dir/depend.make

# Include the progress variables for this target.
include MyRenderer/CMakeFiles/vectest.dir/progress.make

# Include the compile flags for this target's objects.
include MyRenderer/CMakeFiles/vectest.dir/flags.make

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o: MyRenderer/CMakeFiles/vectest.dir/flags.make
MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o: ../MyRenderer/test/VecTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vectest.dir/test/VecTest.cpp.o -c /home/wch/github/chenhui-lib/MyRenderer/test/VecTest.cpp

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vectest.dir/test/VecTest.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/MyRenderer/test/VecTest.cpp > CMakeFiles/vectest.dir/test/VecTest.cpp.i

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vectest.dir/test/VecTest.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/MyRenderer/test/VecTest.cpp -o CMakeFiles/vectest.dir/test/VecTest.cpp.s

# Object files for target vectest
vectest_OBJECTS = \
"CMakeFiles/vectest.dir/test/VecTest.cpp.o"

# External object files for target vectest
vectest_EXTERNAL_OBJECTS =

../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o
../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/build.make
../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../build/bin/vectest"
	cd /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vectest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MyRenderer/CMakeFiles/vectest.dir/build: ../build/bin/vectest

.PHONY : MyRenderer/CMakeFiles/vectest.dir/build

MyRenderer/CMakeFiles/vectest.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer && $(CMAKE_COMMAND) -P CMakeFiles/vectest.dir/cmake_clean.cmake
.PHONY : MyRenderer/CMakeFiles/vectest.dir/clean

MyRenderer/CMakeFiles/vectest.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/MyRenderer /home/wch/github/chenhui-lib/cmake-build-debug /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer /home/wch/github/chenhui-lib/cmake-build-debug/MyRenderer/CMakeFiles/vectest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MyRenderer/CMakeFiles/vectest.dir/depend

