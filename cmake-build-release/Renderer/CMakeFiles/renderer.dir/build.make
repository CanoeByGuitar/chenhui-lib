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
include Renderer/CMakeFiles/renderer.dir/depend.make
# Include the progress variables for this target.
include Renderer/CMakeFiles/renderer.dir/progress.make

# Include the compile flags for this target's objects.
include Renderer/CMakeFiles/renderer.dir/flags.make

Renderer/CMakeFiles/renderer.dir/Texture.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Texture.cpp.o: ../Renderer/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Renderer/CMakeFiles/renderer.dir/Texture.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Texture.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Texture.cpp

Renderer/CMakeFiles/renderer.dir/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Texture.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Texture.cpp > CMakeFiles/renderer.dir/Texture.cpp.i

Renderer/CMakeFiles/renderer.dir/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Texture.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Texture.cpp -o CMakeFiles/renderer.dir/Texture.cpp.s

Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o: ../Renderer/Buffer/FrameBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Buffer/FrameBuffer.cpp

Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Buffer/FrameBuffer.cpp > CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.i

Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Buffer/FrameBuffer.cpp -o CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.s

Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o: ../Renderer/Buffer/VertexBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexBuffer.cpp

Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexBuffer.cpp > CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.i

Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexBuffer.cpp -o CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.s

Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o: ../Renderer/Buffer/IndexBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Buffer/IndexBuffer.cpp

Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Buffer/IndexBuffer.cpp > CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.i

Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Buffer/IndexBuffer.cpp -o CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.s

Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o: ../Renderer/Buffer/VertexArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexArray.cpp

Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexArray.cpp > CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.i

Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Buffer/VertexArray.cpp -o CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.s

Renderer/CMakeFiles/renderer.dir/Scene.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Scene.cpp.o: ../Renderer/Scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Renderer/CMakeFiles/renderer.dir/Scene.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Scene.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Scene.cpp

Renderer/CMakeFiles/renderer.dir/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Scene.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Scene.cpp > CMakeFiles/renderer.dir/Scene.cpp.i

Renderer/CMakeFiles/renderer.dir/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Scene.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Scene.cpp -o CMakeFiles/renderer.dir/Scene.cpp.s

Renderer/CMakeFiles/renderer.dir/glad.c.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/glad.c.o: ../Renderer/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object Renderer/CMakeFiles/renderer.dir/glad.c.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/renderer.dir/glad.c.o -c /Volumes/disk2/ChenhuiLib/Renderer/glad.c

Renderer/CMakeFiles/renderer.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/renderer.dir/glad.c.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/glad.c > CMakeFiles/renderer.dir/glad.c.i

Renderer/CMakeFiles/renderer.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/renderer.dir/glad.c.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/glad.c -o CMakeFiles/renderer.dir/glad.c.s

Renderer/CMakeFiles/renderer.dir/Particle.cpp.o: Renderer/CMakeFiles/renderer.dir/flags.make
Renderer/CMakeFiles/renderer.dir/Particle.cpp.o: ../Renderer/Particle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object Renderer/CMakeFiles/renderer.dir/Particle.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/renderer.dir/Particle.cpp.o -c /Volumes/disk2/ChenhuiLib/Renderer/Particle.cpp

Renderer/CMakeFiles/renderer.dir/Particle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/renderer.dir/Particle.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Renderer/Particle.cpp > CMakeFiles/renderer.dir/Particle.cpp.i

Renderer/CMakeFiles/renderer.dir/Particle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/renderer.dir/Particle.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Renderer/Particle.cpp -o CMakeFiles/renderer.dir/Particle.cpp.s

# Object files for target renderer
renderer_OBJECTS = \
"CMakeFiles/renderer.dir/Texture.cpp.o" \
"CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o" \
"CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o" \
"CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o" \
"CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o" \
"CMakeFiles/renderer.dir/Scene.cpp.o" \
"CMakeFiles/renderer.dir/glad.c.o" \
"CMakeFiles/renderer.dir/Particle.cpp.o"

# External object files for target renderer
renderer_EXTERNAL_OBJECTS =

../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Texture.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Buffer/FrameBuffer.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Buffer/VertexBuffer.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Buffer/IndexBuffer.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Buffer/VertexArray.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Scene.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/glad.c.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/Particle.cpp.o
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/build.make
../build/lib/librenderer.a: Renderer/CMakeFiles/renderer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library ../../build/lib/librenderer.a"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && $(CMAKE_COMMAND) -P CMakeFiles/renderer.dir/cmake_clean_target.cmake
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/renderer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Renderer/CMakeFiles/renderer.dir/build: ../build/lib/librenderer.a
.PHONY : Renderer/CMakeFiles/renderer.dir/build

Renderer/CMakeFiles/renderer.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer && $(CMAKE_COMMAND) -P CMakeFiles/renderer.dir/cmake_clean.cmake
.PHONY : Renderer/CMakeFiles/renderer.dir/clean

Renderer/CMakeFiles/renderer.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/Renderer /Volumes/disk2/ChenhuiLib/cmake-build-release /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer /Volumes/disk2/ChenhuiLib/cmake-build-release/Renderer/CMakeFiles/renderer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Renderer/CMakeFiles/renderer.dir/depend

