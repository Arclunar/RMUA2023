# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/anifan/rmua/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anifan/rmua/catkin_ws/build

# Include any dependencies generated for this target.
include task2/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include task2/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include task2/CMakeFiles/server.dir/flags.make

task2/CMakeFiles/server.dir/src/server.cpp.o: task2/CMakeFiles/server.dir/flags.make
task2/CMakeFiles/server.dir/src/server.cpp.o: /home/anifan/rmua/catkin_ws/src/task2/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anifan/rmua/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object task2/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/anifan/rmua/catkin_ws/build/task2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/anifan/rmua/catkin_ws/src/task2/src/server.cpp

task2/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/anifan/rmua/catkin_ws/build/task2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anifan/rmua/catkin_ws/src/task2/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

task2/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/anifan/rmua/catkin_ws/build/task2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anifan/rmua/catkin_ws/src/task2/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

task2/CMakeFiles/server.dir/src/server.cpp.o.requires:

.PHONY : task2/CMakeFiles/server.dir/src/server.cpp.o.requires

task2/CMakeFiles/server.dir/src/server.cpp.o.provides: task2/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f task2/CMakeFiles/server.dir/build.make task2/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : task2/CMakeFiles/server.dir/src/server.cpp.o.provides

task2/CMakeFiles/server.dir/src/server.cpp.o.provides.build: task2/CMakeFiles/server.dir/src/server.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/anifan/rmua/catkin_ws/devel/lib/task2/server: task2/CMakeFiles/server.dir/src/server.cpp.o
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: task2/CMakeFiles/server.dir/build.make
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/libroscpp.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/libcv_bridge.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/librosconsole.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/librostime.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /opt/ros/melodic/lib/libcpp_common.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/anifan/rmua/catkin_ws/devel/lib/task2/server: task2/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anifan/rmua/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/anifan/rmua/catkin_ws/devel/lib/task2/server"
	cd /home/anifan/rmua/catkin_ws/build/task2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
task2/CMakeFiles/server.dir/build: /home/anifan/rmua/catkin_ws/devel/lib/task2/server

.PHONY : task2/CMakeFiles/server.dir/build

task2/CMakeFiles/server.dir/requires: task2/CMakeFiles/server.dir/src/server.cpp.o.requires

.PHONY : task2/CMakeFiles/server.dir/requires

task2/CMakeFiles/server.dir/clean:
	cd /home/anifan/rmua/catkin_ws/build/task2 && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : task2/CMakeFiles/server.dir/clean

task2/CMakeFiles/server.dir/depend:
	cd /home/anifan/rmua/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anifan/rmua/catkin_ws/src /home/anifan/rmua/catkin_ws/src/task2 /home/anifan/rmua/catkin_ws/build /home/anifan/rmua/catkin_ws/build/task2 /home/anifan/rmua/catkin_ws/build/task2/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task2/CMakeFiles/server.dir/depend

