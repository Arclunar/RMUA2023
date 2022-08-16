# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "task2: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itask2:/home/anifan/rmua/catkin_ws/src/task2/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(task2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_custom_target(_task2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "task2" "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" "std_msgs/String:std_msgs/Header"
)

get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_custom_target(_task2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "task2" "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(task2
  "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task2
)

### Generating Services
_generate_srv_cpp(task2
  "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task2
)

### Generating Module File
_generate_module_cpp(task2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(task2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(task2_generate_messages task2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_dependencies(task2_generate_messages_cpp _task2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_dependencies(task2_generate_messages_cpp _task2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task2_gencpp)
add_dependencies(task2_gencpp task2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(task2
  "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task2
)

### Generating Services
_generate_srv_eus(task2
  "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task2
)

### Generating Module File
_generate_module_eus(task2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(task2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(task2_generate_messages task2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_dependencies(task2_generate_messages_eus _task2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_dependencies(task2_generate_messages_eus _task2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task2_geneus)
add_dependencies(task2_geneus task2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(task2
  "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task2
)

### Generating Services
_generate_srv_lisp(task2
  "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task2
)

### Generating Module File
_generate_module_lisp(task2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(task2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(task2_generate_messages task2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_dependencies(task2_generate_messages_lisp _task2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_dependencies(task2_generate_messages_lisp _task2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task2_genlisp)
add_dependencies(task2_genlisp task2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(task2
  "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task2
)

### Generating Services
_generate_srv_nodejs(task2
  "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task2
)

### Generating Module File
_generate_module_nodejs(task2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(task2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(task2_generate_messages task2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_dependencies(task2_generate_messages_nodejs _task2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_dependencies(task2_generate_messages_nodejs _task2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task2_gennodejs)
add_dependencies(task2_gennodejs task2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(task2
  "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2
)

### Generating Services
_generate_srv_py(task2
  "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2
)

### Generating Module File
_generate_module_py(task2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(task2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(task2_generate_messages task2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/msg/StringStamped.msg" NAME_WE)
add_dependencies(task2_generate_messages_py _task2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anifan/rmua/catkin_ws/src/task2/srv/hello.srv" NAME_WE)
add_dependencies(task2_generate_messages_py _task2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task2_genpy)
add_dependencies(task2_genpy task2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(task2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(task2_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(task2_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(task2_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(task2_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(task2_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(task2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(task2_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(task2_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(task2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(task2_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(task2_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2)
  install(CODE "execute_process(COMMAND \"/home/anifan/anaconda3/envs/py27/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(task2_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(task2_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(task2_generate_messages_py geometry_msgs_generate_messages_py)
endif()
