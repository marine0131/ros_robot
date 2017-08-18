# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "graft: 3 messages, 0 services")

set(MSG_I_FLAGS "-Igraft:/home/robot/ros/src/graft/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(graft_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg" NAME_WE)
add_custom_target(_graft_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graft" "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftControl.msg" NAME_WE)
add_custom_target(_graft_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graft" "/home/robot/ros/src/graft/msg/GraftControl.msg" "geometry_msgs/Vector3:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftState.msg" NAME_WE)
add_custom_target(_graft_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graft" "/home/robot/ros/src/graft/msg/GraftState.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Twist"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(graft
  "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft
)
_generate_msg_cpp(graft
  "/home/robot/ros/src/graft/msg/GraftControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft
)
_generate_msg_cpp(graft
  "/home/robot/ros/src/graft/msg/GraftState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft
)

### Generating Services

### Generating Module File
_generate_module_cpp(graft
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(graft_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(graft_generate_messages graft_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg" NAME_WE)
add_dependencies(graft_generate_messages_cpp _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftControl.msg" NAME_WE)
add_dependencies(graft_generate_messages_cpp _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftState.msg" NAME_WE)
add_dependencies(graft_generate_messages_cpp _graft_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graft_gencpp)
add_dependencies(graft_gencpp graft_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graft_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(graft
  "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft
)
_generate_msg_lisp(graft
  "/home/robot/ros/src/graft/msg/GraftControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft
)
_generate_msg_lisp(graft
  "/home/robot/ros/src/graft/msg/GraftState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft
)

### Generating Services

### Generating Module File
_generate_module_lisp(graft
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(graft_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(graft_generate_messages graft_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg" NAME_WE)
add_dependencies(graft_generate_messages_lisp _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftControl.msg" NAME_WE)
add_dependencies(graft_generate_messages_lisp _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftState.msg" NAME_WE)
add_dependencies(graft_generate_messages_lisp _graft_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graft_genlisp)
add_dependencies(graft_genlisp graft_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graft_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(graft
  "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft
)
_generate_msg_py(graft
  "/home/robot/ros/src/graft/msg/GraftControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft
)
_generate_msg_py(graft
  "/home/robot/ros/src/graft/msg/GraftState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft
)

### Generating Services

### Generating Module File
_generate_module_py(graft
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(graft_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(graft_generate_messages graft_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftSensorResidual.msg" NAME_WE)
add_dependencies(graft_generate_messages_py _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftControl.msg" NAME_WE)
add_dependencies(graft_generate_messages_py _graft_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/ros/src/graft/msg/GraftState.msg" NAME_WE)
add_dependencies(graft_generate_messages_py _graft_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graft_genpy)
add_dependencies(graft_genpy graft_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graft_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graft
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(graft_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(graft_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(graft_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(graft_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graft
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(graft_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(graft_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(graft_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(graft_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graft
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(graft_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(graft_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(graft_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(graft_generate_messages_py sensor_msgs_generate_messages_py)
endif()
