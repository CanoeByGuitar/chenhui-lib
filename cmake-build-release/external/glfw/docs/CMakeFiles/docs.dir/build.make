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

# Utility rule file for docs.

# Include any custom commands dependencies for this target.
include external/glfw/docs/CMakeFiles/docs.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glfw/docs/CMakeFiles/docs.dir/progress.make

external/glfw/docs/html/index.html: ../external/glfw/include/GLFW/glfw3.h
external/glfw/docs/html/index.html: ../external/glfw/include/GLFW/glfw3native.h
external/glfw/docs/html/index.html: ../external/glfw/docs/main.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/news.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/quick.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/moving.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/compile.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/build.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/intro.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/context.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/monitor.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/window.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/input.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/vulkan.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/compat.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/internal.dox
external/glfw/docs/html/index.html: ../external/glfw/docs/DoxygenLayout.xml
external/glfw/docs/html/index.html: ../external/glfw/docs/header.html
external/glfw/docs/html/index.html: ../external/glfw/docs/footer.html
external/glfw/docs/html/index.html: ../external/glfw/docs/extra.css
external/glfw/docs/html/index.html: ../external/glfw/docs/spaces.svg
external/glfw/docs/html/index.html: external/glfw/docs/Doxyfile
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating HTML documentation"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/glfw/docs && /Users/wangchenhui/brew-2.2.2/bin/doxygen

docs: external/glfw/docs/html/index.html
docs: external/glfw/docs/CMakeFiles/docs.dir/build.make
.PHONY : docs

# Rule to build all files generated by this target.
external/glfw/docs/CMakeFiles/docs.dir/build: docs
.PHONY : external/glfw/docs/CMakeFiles/docs.dir/build

external/glfw/docs/CMakeFiles/docs.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/external/glfw/docs && $(CMAKE_COMMAND) -P CMakeFiles/docs.dir/cmake_clean.cmake
.PHONY : external/glfw/docs/CMakeFiles/docs.dir/clean

external/glfw/docs/CMakeFiles/docs.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/external/glfw/docs /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/external/glfw/docs /Volumes/disk2/ChenhuiLib/cmake-build-release/external/glfw/docs/CMakeFiles/docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/docs/CMakeFiles/docs.dir/depend

