# CMake generated Testfile for 
# Source directory: /home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-src/src
# Build directory: /home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-build/src
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(pkg-config--static "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-src/src/../cmake/test-pkgconfig.sh" "--static")
set_tests_properties(pkg-config--static PROPERTIES  _BACKTRACE_TRIPLES "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-src/src/CMakeLists.txt;189;add_test;/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-src/src/CMakeLists.txt;0;")
subdirs("external/glfw")
