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
include external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/depend.make

# Include the progress variables for this target.
include external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/progress.make

# Include the compile flags for this target's objects.
include external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/flags.make

external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o: external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/flags.make
external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o: ../external/eigen/doc/examples/Cwise_lgamma.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o -c /home/wch/github/chenhui-lib/external/eigen/doc/examples/Cwise_lgamma.cpp

external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wch/github/chenhui-lib/external/eigen/doc/examples/Cwise_lgamma.cpp > CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i

external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wch/github/chenhui-lib/external/eigen/doc/examples/Cwise_lgamma.cpp -o CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s

# Object files for target Cwise_lgamma
Cwise_lgamma_OBJECTS = \
"CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o"

# External object files for target Cwise_lgamma
Cwise_lgamma_EXTERNAL_OBJECTS =

../build/bin/Cwise_lgamma: external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o
../build/bin/Cwise_lgamma: external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/build.make
../build/bin/Cwise_lgamma: external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wch/github/chenhui-lib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../build/bin/Cwise_lgamma"
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Cwise_lgamma.dir/link.txt --verbose=$(VERBOSE)
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && ../../../../../build/bin/Cwise_lgamma >/home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples/Cwise_lgamma.out

# Rule to build all files generated by this target.
external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/build: ../build/bin/Cwise_lgamma

.PHONY : external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/build

external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/clean:
	cd /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/Cwise_lgamma.dir/cmake_clean.cmake
.PHONY : external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/clean

external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/depend:
	cd /home/wch/github/chenhui-lib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wch/github/chenhui-lib /home/wch/github/chenhui-lib/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-release /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples /home/wch/github/chenhui-lib/cmake-build-release/external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/eigen/doc/examples/CMakeFiles/Cwise_lgamma.dir/depend
