# Install script for directory: /home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/AudioDevice.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/AudioStream.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/BoundingBox.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Camera2D.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Camera3D.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Color.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/DroppedFiles.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Font.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Gamepad.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Image.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Material.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Matrix.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Mesh.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/ModelAnimation.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Model.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Mouse.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Music.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Physics.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/RayHitInfo.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Ray.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/raylib-cpp.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/raylib-cpp-utils.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Rectangle.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/RenderTexture2D.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Shader.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Sound.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Texture2D.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Vector2.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Vector3.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Vector4.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/VrSimulator.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Wave.hpp"
    "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src/include/Window.hpp"
    )
endif()

