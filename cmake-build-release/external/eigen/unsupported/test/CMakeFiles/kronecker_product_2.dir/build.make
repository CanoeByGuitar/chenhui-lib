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
include external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/depend.make
# Include the progress variables for this target.
include external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/flags.make

external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o: external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/flags.make
external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o: ../external/eigen/unsupported/test/kronecker_product.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o -c /Volumes/disk2/ChenhuiLib/external/eigen/unsupported/test/kronecker_product.cpp

external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/external/eigen/unsupported/test/kronecker_product.cpp > CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i

external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/external/eigen/unsupported/test/kronecker_product.cpp -o CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s

# Object files for target kronecker_product_2
kronecker_product_2_OBJECTS = \
"CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o"

# External object files for target kronecker_product_2
kronecker_product_2_EXTERNAL_OBJECTS =

../build/bin/kronecker_product_2: external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o
../build/bin/kronecker_product_2: external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/build.make
../build/bin/kronecker_product_2: external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/kronecker_product_2"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kronecker_product_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/build: ../build/bin/kronecker_product_2
.PHONY : external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/build

external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/kronecker_product_2.dir/cmake_clean.cmake
.PHONY : external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/clean

external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/eigen/unsupported/test /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test /Volumes/disk2/ChenhuiLib/cmake-build-release/external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/unsupported/test/CMakeFiles/kronecker_product_2.dir/depend

