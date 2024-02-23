# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rostu2024: 8 messages, 0 services")

set(MSG_I_FLAGS "-Irostu2024:/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rostu2024_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_custom_target(_rostu2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu2024" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)
_generate_msg_cpp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
)

### Generating Services

### Generating Module File
_generate_module_cpp(rostu2024
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rostu2024_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rostu2024_generate_messages rostu2024_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_cpp _rostu2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu2024_gencpp)
add_dependencies(rostu2024_gencpp rostu2024_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu2024_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)
_generate_msg_eus(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
)

### Generating Services

### Generating Module File
_generate_module_eus(rostu2024
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rostu2024_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rostu2024_generate_messages rostu2024_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_eus _rostu2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu2024_geneus)
add_dependencies(rostu2024_geneus rostu2024_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu2024_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)
_generate_msg_lisp(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
)

### Generating Services

### Generating Module File
_generate_module_lisp(rostu2024
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rostu2024_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rostu2024_generate_messages rostu2024_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_lisp _rostu2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu2024_genlisp)
add_dependencies(rostu2024_genlisp rostu2024_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu2024_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)
_generate_msg_nodejs(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rostu2024
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rostu2024_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rostu2024_generate_messages rostu2024_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_nodejs _rostu2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu2024_gennodejs)
add_dependencies(rostu2024_gennodejs rostu2024_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu2024_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)
_generate_msg_py(rostu2024
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
)

### Generating Services

### Generating Module File
_generate_module_py(rostu2024
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rostu2024_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rostu2024_generate_messages rostu2024_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu2024_generate_messages_py _rostu2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu2024_genpy)
add_dependencies(rostu2024_genpy rostu2024_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu2024_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu2024
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rostu2024_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu2024
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rostu2024_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu2024
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rostu2024_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu2024
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rostu2024_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu2024
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rostu2024_generate_messages_py std_msgs_generate_messages_py)
endif()
