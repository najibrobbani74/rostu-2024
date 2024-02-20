# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interfaces: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iinterfaces:/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_custom_target(_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interfaces" "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interfaces
)

### Generating Services

### Generating Module File
_generate_module_cpp(interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interfaces_generate_messages interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(interfaces_generate_messages_cpp _interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interfaces_gencpp)
add_dependencies(interfaces_gencpp interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interfaces
)

### Generating Services

### Generating Module File
_generate_module_eus(interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interfaces_generate_messages interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(interfaces_generate_messages_eus _interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interfaces_geneus)
add_dependencies(interfaces_geneus interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interfaces
)

### Generating Services

### Generating Module File
_generate_module_lisp(interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interfaces_generate_messages interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(interfaces_generate_messages_lisp _interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interfaces_genlisp)
add_dependencies(interfaces_genlisp interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interfaces
)

### Generating Services

### Generating Module File
_generate_module_nodejs(interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interfaces_generate_messages interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(interfaces_generate_messages_nodejs _interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interfaces_gennodejs)
add_dependencies(interfaces_gennodejs interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interfaces
  "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interfaces
)

### Generating Services

### Generating Module File
_generate_module_py(interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interfaces_generate_messages interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/najibrobbani/Data/program/code/project/ros/rostu/src/interfaces/msg/Wheel.msg" NAME_WE)
add_dependencies(interfaces_generate_messages_py _interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interfaces_genpy)
add_dependencies(interfaces_genpy interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
