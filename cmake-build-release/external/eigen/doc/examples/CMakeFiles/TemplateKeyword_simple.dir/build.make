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
CMAKE_BINARY_DIR = /Volumes/disk2/ChenhuiLib/cmake-build-release

# Include any dependencies generated for this target.
include external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/depend.make
# Include the progress variables for this target.
include external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/flags.make

external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o: external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/flags.make
external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o: ../external/eigen/doc/examples/TemplateKeyword_simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o -c /Volumes/disk2/ChenhuiLib/external/eigen/doc/examples/TemplateKeyword_simple.cpp

external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/external/eigen/doc/examples/TemplateKeyword_simple.cpp > CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.i

external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/external/eigen/doc/examples/TemplateKeyword_simple.cpp -o CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.s

# Object files for target TemplateKeyword_simple
TemplateKeyword_simple_OBJECTS = \
"CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o"

# External object files for target TemplateKeyword_simple
TemplateKeyword_simple_EXTERNAL_OBJECTS =

../build/bin/TemplateKeyword_simple: external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/TemplateKeyword_simple.cpp.o
../build/bin/TemplateKeyword_simple: external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/build.make
../build/bin/TemplateKeyword_simple: external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/TemplateKeyword_simple"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TemplateKeyword_simple.dir/link.txt --verbose=$(VERBOSE)
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && ../../../../../build/bin/TemplateKeyword_simple >/Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples/TemplateKeyword_simple.out

# Rule to build all files generated by this target.
external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/build: ../build/bin/TemplateKeyword_simple
.PHONY : external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/build

external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/TemplateKeyword_simple.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/clean

external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/doc/examples /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/examples/CMakeFiles/TemplateKeyword_simple.dir/depend

