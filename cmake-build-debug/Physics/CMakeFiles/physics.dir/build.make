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
include Physics/CMakeFiles/physics.dir/depend.make
# Include the progress variables for this target.
include Physics/CMakeFiles/physics.dir/progress.make

# Include the compile flags for this target's objects.
include Physics/CMakeFiles/physics.dir/flags.make

Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.o: ../Physics/MassSpringSim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MassSpringSim.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MassSpringSim.cpp

Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MassSpringSim.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MassSpringSim.cpp > CMakeFiles/physics.dir/MassSpringSim.cpp.i

Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MassSpringSim.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MassSpringSim.cpp -o CMakeFiles/physics.dir/MassSpringSim.cpp.s

Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o: ../Physics/MPM/MpmSimulationBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmSimulationBase.cpp

Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmSimulationBase.cpp > CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.i

Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmSimulationBase.cpp -o CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.s

Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o: ../Physics/MPM/MpmGrid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmGrid.cpp

Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MPM/MpmGrid.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmGrid.cpp > CMakeFiles/physics.dir/MPM/MpmGrid.cpp.i

Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MPM/MpmGrid.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmGrid.cpp -o CMakeFiles/physics.dir/MPM/MpmGrid.cpp.s

Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o: ../Physics/MPM/MpmParticle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmParticle.cpp

Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MPM/MpmParticle.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmParticle.cpp > CMakeFiles/physics.dir/MPM/MpmParticle.cpp.i

Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MPM/MpmParticle.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmParticle.cpp -o CMakeFiles/physics.dir/MPM/MpmParticle.cpp.s

Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o: ../Physics/MPM/ConstitutionModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MPM/ConstitutionModel.cpp

Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MPM/ConstitutionModel.cpp > CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.i

Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MPM/ConstitutionModel.cpp -o CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.s

Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o: Physics/CMakeFiles/physics.dir/flags.make
Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o: ../Physics/MPM/MpmUtils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o -c /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmUtils.cpp

Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/physics.dir/MPM/MpmUtils.cpp.i"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmUtils.cpp > CMakeFiles/physics.dir/MPM/MpmUtils.cpp.i

Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/physics.dir/MPM/MpmUtils.cpp.s"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/disk2/ChenhuiLib/Physics/MPM/MpmUtils.cpp -o CMakeFiles/physics.dir/MPM/MpmUtils.cpp.s

# Object files for target physics
physics_OBJECTS = \
"CMakeFiles/physics.dir/MassSpringSim.cpp.o" \
"CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o" \
"CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o" \
"CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o" \
"CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o" \
"CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o"

# External object files for target physics
physics_EXTERNAL_OBJECTS =

../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MassSpringSim.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MPM/MpmSimulationBase.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MPM/MpmGrid.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MPM/MpmParticle.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MPM/ConstitutionModel.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/MPM/MpmUtils.cpp.o
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/build.make
../build/lib/libphysics.a: Physics/CMakeFiles/physics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/disk2/ChenhuiLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library ../../build/lib/libphysics.a"
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && $(CMAKE_COMMAND) -P CMakeFiles/physics.dir/cmake_clean_target.cmake
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/physics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Physics/CMakeFiles/physics.dir/build: ../build/lib/libphysics.a
.PHONY : Physics/CMakeFiles/physics.dir/build

Physics/CMakeFiles/physics.dir/clean:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics && $(CMAKE_COMMAND) -P CMakeFiles/physics.dir/cmake_clean.cmake
.PHONY : Physics/CMakeFiles/physics.dir/clean

Physics/CMakeFiles/physics.dir/depend:
	cd /Volumes/disk2/ChenhuiLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/disk2/ChenhuiLib /Volumes/disk2/ChenhuiLib/Physics /Volumes/disk2/ChenhuiLib/cmake-build-debug /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics /Volumes/disk2/ChenhuiLib/cmake-build-debug/Physics/CMakeFiles/physics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Physics/CMakeFiles/physics.dir/depend

