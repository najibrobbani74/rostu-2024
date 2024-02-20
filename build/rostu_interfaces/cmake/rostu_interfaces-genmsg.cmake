# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rostu_interfaces: 8 messages, 0 services")

set(MSG_I_FLAGS "-Irostu_interfaces:/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rostu_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" ""
)

get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_custom_target(_rostu_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostu_interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_cpp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
)

### Generating Services

### Generating Module File
_generate_module_cpp(rostu_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rostu_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rostu_interfaces_generate_messages rostu_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_cpp _rostu_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu_interfaces_gencpp)
add_dependencies(rostu_interfaces_gencpp rostu_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_eus(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
)

### Generating Services

### Generating Module File
_generate_module_eus(rostu_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rostu_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rostu_interfaces_generate_messages rostu_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_eus _rostu_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu_interfaces_geneus)
add_dependencies(rostu_interfaces_geneus rostu_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_lisp(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
)

### Generating Services

### Generating Module File
_generate_module_lisp(rostu_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rostu_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rostu_interfaces_generate_messages rostu_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_lisp _rostu_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu_interfaces_genlisp)
add_dependencies(rostu_interfaces_genlisp rostu_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_nodejs(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rostu_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rostu_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rostu_interfaces_generate_messages rostu_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_nodejs _rostu_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu_interfaces_gennodejs)
add_dependencies(rostu_interfaces_gennodejs rostu_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)
_generate_msg_py(rostu_interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
)

### Generating Services

### Generating Module File
_generate_module_py(rostu_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rostu_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rostu_interfaces_generate_messages rostu_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/NavigationSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/RobotStatus.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/KickerSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/BallPositionBasedOnCamera.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleModule.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu_interfaces/msg/DribbleSetting.msg" NAME_WE)
add_dependencies(rostu_interfaces_generate_messages_py _rostu_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostu_interfaces_genpy)
add_dependencies(rostu_interfaces_genpy rostu_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostu_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostu_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rostu_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostu_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rostu_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostu_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
