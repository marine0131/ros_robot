# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/robot/ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/ros/build

# Include any dependencies generated for this target.
include imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/depend.make

# Include the progress variables for this target.
include imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/progress.make

# Include the compile flags for this target's objects.
include imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/flags.make

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/flags.make
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o: /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/ros/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o -c /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter.cpp

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu_filter.dir/src/imu_filter.cpp.i"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter.cpp > CMakeFiles/imu_filter.dir/src/imu_filter.cpp.i

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu_filter.dir/src/imu_filter.cpp.s"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter.cpp -o CMakeFiles/imu_filter.dir/src/imu_filter.cpp.s

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.requires:
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.requires

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.provides: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.requires
	$(MAKE) -f imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build.make imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.provides.build
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.provides

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.provides.build: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/flags.make
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o: /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter_ros.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/ros/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o -c /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter_ros.cpp

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.i"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter_ros.cpp > CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.i

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.s"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/imu_filter_ros.cpp -o CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.s

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.requires:
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.requires

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.provides: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.requires
	$(MAKE) -f imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build.make imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.provides.build
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.provides

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.provides.build: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/flags.make
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o: /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/stateless_orientation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/ros/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o -c /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/stateless_orientation.cpp

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.i"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/stateless_orientation.cpp > CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.i

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.s"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robot/ros/src/imu_tools/imu_filter_madgwick/src/stateless_orientation.cpp -o CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.s

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.requires:
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.requires

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.provides: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.requires
	$(MAKE) -f imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build.make imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.provides.build
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.provides

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.provides.build: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o

# Object files for target imu_filter
imu_filter_OBJECTS = \
"CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o" \
"CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o" \
"CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o"

# External object files for target imu_filter
imu_filter_EXTERNAL_OBJECTS =

/home/robot/ros/devel/lib/libimu_filter.so: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o
/home/robot/ros/devel/lib/libimu_filter.so: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o
/home/robot/ros/devel/lib/libimu_filter.so: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o
/home/robot/ros/devel/lib/libimu_filter.so: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build.make
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/liborocos-kdl.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libtf2_ros.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libactionlib.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libtf2.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libnodeletlib.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libbondcpp.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libclass_loader.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/libPocoFoundation.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libroslib.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librospack.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libroscpp.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/liblog4cxx.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librostime.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libcpp_common.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/liblog4cxx.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/librostime.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/robot/ros/devel/lib/libimu_filter.so: /opt/ros/indigo/lib/libcpp_common.so
/home/robot/ros/devel/lib/libimu_filter.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/robot/ros/devel/lib/libimu_filter.so: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/robot/ros/devel/lib/libimu_filter.so"
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imu_filter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build: /home/robot/ros/devel/lib/libimu_filter.so
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/build

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/requires: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter.cpp.o.requires
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/requires: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/imu_filter_ros.cpp.o.requires
imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/requires: imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/src/stateless_orientation.cpp.o.requires
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/requires

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/clean:
	cd /home/robot/ros/build/imu_tools/imu_filter_madgwick && $(CMAKE_COMMAND) -P CMakeFiles/imu_filter.dir/cmake_clean.cmake
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/clean

imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/depend:
	cd /home/robot/ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/ros/src /home/robot/ros/src/imu_tools/imu_filter_madgwick /home/robot/ros/build /home/robot/ros/build/imu_tools/imu_filter_madgwick /home/robot/ros/build/imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imu_tools/imu_filter_madgwick/CMakeFiles/imu_filter.dir/depend

