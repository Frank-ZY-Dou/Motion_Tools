# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /home/frank/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/frank/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build

# Include any dependencies generated for this target.
include vicon_bridge/CMakeFiles/testclient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vicon_bridge/CMakeFiles/testclient.dir/compiler_depend.make

# Include the progress variables for this target.
include vicon_bridge/CMakeFiles/testclient.dir/progress.make

# Include the compile flags for this target's objects.
include vicon_bridge/CMakeFiles/testclient.dir/flags.make

vicon_bridge/CMakeFiles/testclient.dir/codegen:
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/codegen

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o: vicon_bridge/CMakeFiles/testclient.dir/flags.make
vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o: /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp
vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o: vicon_bridge/CMakeFiles/testclient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o"
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o -MF CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o.d -o CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o -c /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i"
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp > CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.i

vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s"
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src/vicon_bridge/src/ViconDataStreamSDK_CPPTest.cpp -o CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.s

# Object files for target testclient
testclient_OBJECTS = \
"CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o"

# External object files for target testclient
testclient_EXTERNAL_OBJECTS =

/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/src/ViconDataStreamSDK_CPPTest.cpp.o
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/build.make
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/libvicon_sdk.so
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient: vicon_bridge/CMakeFiles/testclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient"
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vicon_bridge/CMakeFiles/testclient.dir/build: /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/devel/lib/vicon_bridge/testclient
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/build

vicon_bridge/CMakeFiles/testclient.dir/clean:
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge && $(CMAKE_COMMAND) -P CMakeFiles/testclient.dir/cmake_clean.cmake
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/clean

vicon_bridge/CMakeFiles/testclient.dir/depend:
	cd /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/src/vicon_bridge /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge /home/frank/Documents/code/Landing_Robot_Control/vicon_frank2/catkin_ws/build/vicon_bridge/CMakeFiles/testclient.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vicon_bridge/CMakeFiles/testclient.dir/depend

