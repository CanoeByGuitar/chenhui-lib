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
include MyRenderer/CMakeFiles/vectest.dir/depend.make
# Include the progress variables for this target.
include MyRenderer/CMakeFiles/vectest.dir/progress.make

# Include the compile flags for this target's objects.
include MyRenderer/CMakeFiles/vectest.dir/flags.make

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o: MyRenderer/CMakeFiles/vectest.dir/flags.make
MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o: ../MyRenderer/test/VecTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vectest.dir/test/VecTest.cpp.o -c /Volumes/disk2/ChenhuiLib/MyRenderer/test/VecTest.cpp

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vectest.dir/test/VecTest.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/MyRenderer/test/VecTest.cpp > CMakeFiles/vectest.dir/test/VecTest.cpp.i

MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vectest.dir/test/VecTest.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/MyRenderer/test/VecTest.cpp -o CMakeFiles/vectest.dir/test/VecTest.cpp.s

# Object files for target vectest
vectest_OBJECTS = \
"CMakeFiles/vectest.dir/test/VecTest.cpp.o"

# External object files for target vectest
vectest_EXTERNAL_OBJECTS =

../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/test/VecTest.cpp.o
../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/build.make
../build/bin/vectest: MyRenderer/CMakeFiles/vectest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../build/bin/vectest"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vectest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MyRenderer/CMakeFiles/vectest.dir/build: ../build/bin/vectest
.PHONY : MyRenderer/CMakeFiles/vectest.dir/build

MyRenderer/CMakeFiles/vectest.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer && $(CMAKE_COMMAND) -P CMakeFiles/vectest.dir/cmake_clean.cmake
.PHONY : MyRenderer/CMakeFiles/vectest.dir/clean

MyRenderer/CMakeFiles/vectest.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/MyRenderer /Volumes/disk2/ChenhuiLib/cmake-build-debug /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer /Volumes/disk2/ChenhuiLib/cmake-build-debug/MyRenderer/CMakeFiles/vectest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MyRenderer/CMakeFiles/vectest.dir/depend

