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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/a010010/Documents/GitHub/AL_Core/AL_Core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/AgentLive.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AgentLive.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AgentLive.dir/flags.make

CMakeFiles/AgentLive.dir/main.c.o: CMakeFiles/AgentLive.dir/flags.make
CMakeFiles/AgentLive.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/AgentLive.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/AgentLive.dir/main.c.o   -c /Users/a010010/Documents/GitHub/AL_Core/AL_Core/main.c

CMakeFiles/AgentLive.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/AgentLive.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/a010010/Documents/GitHub/AL_Core/AL_Core/main.c > CMakeFiles/AgentLive.dir/main.c.i

CMakeFiles/AgentLive.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/AgentLive.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/a010010/Documents/GitHub/AL_Core/AL_Core/main.c -o CMakeFiles/AgentLive.dir/main.c.s

CMakeFiles/AgentLive.dir/iLibX.c.o: CMakeFiles/AgentLive.dir/flags.make
CMakeFiles/AgentLive.dir/iLibX.c.o: ../iLibX.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/AgentLive.dir/iLibX.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/AgentLive.dir/iLibX.c.o   -c /Users/a010010/Documents/GitHub/AL_Core/AL_Core/iLibX.c

CMakeFiles/AgentLive.dir/iLibX.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/AgentLive.dir/iLibX.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/a010010/Documents/GitHub/AL_Core/AL_Core/iLibX.c > CMakeFiles/AgentLive.dir/iLibX.c.i

CMakeFiles/AgentLive.dir/iLibX.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/AgentLive.dir/iLibX.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/a010010/Documents/GitHub/AL_Core/AL_Core/iLibX.c -o CMakeFiles/AgentLive.dir/iLibX.c.s

# Object files for target AgentLive
AgentLive_OBJECTS = \
"CMakeFiles/AgentLive.dir/main.c.o" \
"CMakeFiles/AgentLive.dir/iLibX.c.o"

# External object files for target AgentLive
AgentLive_EXTERNAL_OBJECTS =

AgentLive: CMakeFiles/AgentLive.dir/main.c.o
AgentLive: CMakeFiles/AgentLive.dir/iLibX.c.o
AgentLive: CMakeFiles/AgentLive.dir/build.make
AgentLive: CMakeFiles/AgentLive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable AgentLive"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AgentLive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AgentLive.dir/build: AgentLive

.PHONY : CMakeFiles/AgentLive.dir/build

CMakeFiles/AgentLive.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AgentLive.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AgentLive.dir/clean

CMakeFiles/AgentLive.dir/depend:
	cd /Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/a010010/Documents/GitHub/AL_Core/AL_Core /Users/a010010/Documents/GitHub/AL_Core/AL_Core /Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release /Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release /Users/a010010/Documents/GitHub/AL_Core/AL_Core/cmake-build-release/CMakeFiles/AgentLive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AgentLive.dir/depend

