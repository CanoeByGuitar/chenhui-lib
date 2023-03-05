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
include external/eigen/blas/testing/CMakeFiles/cblat1.dir/depend.make
# Include the progress variables for this target.
include external/eigen/blas/testing/CMakeFiles/cblat1.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/blas/testing/CMakeFiles/cblat1.dir/flags.make

external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.o: external/eigen/blas/testing/CMakeFiles/cblat1.dir/flags.make
external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.o: ../external/eigen/blas/testing/cblat1.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing && /Users/wangchenhui/brew-2.2.2/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Volumes/disk2/ChenhuiLib/external/eigen/blas/testing/cblat1.f -o CMakeFiles/cblat1.dir/cblat1.f.o

external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/cblat1.dir/cblat1.f.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing && /Users/wangchenhui/brew-2.2.2/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Volumes/disk2/ChenhuiLib/external/eigen/blas/testing/cblat1.f > CMakeFiles/cblat1.dir/cblat1.f.i

external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/cblat1.dir/cblat1.f.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing && /Users/wangchenhui/brew-2.2.2/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Volumes/disk2/ChenhuiLib/external/eigen/blas/testing/cblat1.f -o CMakeFiles/cblat1.dir/cblat1.f.s

# Object files for target cblat1
cblat1_OBJECTS = \
"CMakeFiles/cblat1.dir/cblat1.f.o"

# External object files for target cblat1
cblat1_EXTERNAL_OBJECTS =

../build/bin/cblat1: external/eigen/blas/testing/CMakeFiles/cblat1.dir/cblat1.f.o
../build/bin/cblat1: external/eigen/blas/testing/CMakeFiles/cblat1.dir/build.make
../build/bin/cblat1: ../build/bin/libeigen_blas.dylib
../build/bin/cblat1: external/eigen/blas/testing/CMakeFiles/cblat1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable ../../../../../build/bin/cblat1"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cblat1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/eigen/blas/testing/CMakeFiles/cblat1.dir/build: ../build/bin/cblat1
.PHONY : external/eigen/blas/testing/CMakeFiles/cblat1.dir/build

external/eigen/blas/testing/CMakeFiles/cblat1.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing && $(CMAKE_COMMAND) -P CMakeFiles/cblat1.dir/cmake_clean.cmake
.PHONY : external/eigen/blas/testing/CMakeFiles/cblat1.dir/clean

external/eigen/blas/testing/CMakeFiles/cblat1.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/blas/testing /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/blas/testing/CMakeFiles/cblat1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/blas/testing/CMakeFiles/cblat1.dir/depend

