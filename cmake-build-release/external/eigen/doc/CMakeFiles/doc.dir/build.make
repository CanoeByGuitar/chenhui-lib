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

# Utility rule file for doc.

# Include any custom commands dependencies for this target.
include external/eigen/doc/CMakeFiles/doc.dir/compiler_depend.make

# Include the progress variables for this target.
include external/eigen/doc/CMakeFiles/doc.dir/progress.make

external/eigen/doc/CMakeFiles/doc:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && doxygen
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && doxygen Doxyfile-unsupported
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E copy /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/html/group__TopicUnalignedArrayAssert.html /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/html/TopicUnalignedArrayAssert.html
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rename html eigen-doc
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove eigen-doc/eigen-doc.tgz eigen-doc/unsupported/_formulas.log eigen-doc/_formulas.log
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E tar cfz eigen-doc.tgz eigen-doc
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rename eigen-doc.tgz eigen-doc/eigen-doc.tgz
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rename eigen-doc html

doc: external/eigen/doc/CMakeFiles/doc
doc: external/eigen/doc/CMakeFiles/doc.dir/build.make
.PHONY : doc

# Rule to build all files generated by this target.
external/eigen/doc/CMakeFiles/doc.dir/build: doc
.PHONY : external/eigen/doc/CMakeFiles/doc.dir/build

external/eigen/doc/CMakeFiles/doc.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/CMakeFiles/doc.dir/clean

external/eigen/doc/CMakeFiles/doc.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/doc /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/doc/CMakeFiles/doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/CMakeFiles/doc.dir/depend

