# Install script for directory: /media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/najibrobbani/Data/program/code/project/ros/rostu/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rostu2024/msg" TYPE FILE FILES
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/Wheel.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/NavigationSetting.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/RobotStatus.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerModule.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/KickerSetting.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/BallPositionBasedOnCamera.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleModule.msg"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/msg/DribbleSetting.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rostu2024/cmake" TYPE FILE FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/build/rostu2024/catkin_generated/installspace/rostu2024-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/include/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/share/roseus/ros/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/share/common-lisp/ros/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/share/gennodejs/ros/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/lib/python3/dist-packages/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/devel/lib/python3/dist-packages/rostu2024")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/build/rostu2024/catkin_generated/installspace/rostu2024.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rostu2024/cmake" TYPE FILE FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/build/rostu2024/catkin_generated/installspace/rostu2024-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rostu2024/cmake" TYPE FILE FILES
    "/media/najibrobbani/Data/program/code/project/ros/rostu/build/rostu2024/catkin_generated/installspace/rostu2024Config.cmake"
    "/media/najibrobbani/Data/program/code/project/ros/rostu/build/rostu2024/catkin_generated/installspace/rostu2024Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rostu2024" TYPE FILE FILES "/media/najibrobbani/Data/program/code/project/ros/rostu/src/rostu2024/package.xml")
endif()

