# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = "/home/guilherme/Área de Trabalho/PacMan_CPP/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/guilherme/Área de Trabalho/PacMan_CPP/build"

# Include any dependencies generated for this target.
include CMakeFiles/raylib-cpp-example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/raylib-cpp-example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raylib-cpp-example.dir/flags.make

CMakeFiles/raylib-cpp-example.dir/main.cpp.o: CMakeFiles/raylib-cpp-example.dir/flags.make
CMakeFiles/raylib-cpp-example.dir/main.cpp.o: /home/guilherme/Área\ de\ Trabalho/PacMan_CPP/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raylib-cpp-example.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raylib-cpp-example.dir/main.cpp.o -c "/home/guilherme/Área de Trabalho/PacMan_CPP/src/main.cpp"

CMakeFiles/raylib-cpp-example.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raylib-cpp-example.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/guilherme/Área de Trabalho/PacMan_CPP/src/main.cpp" > CMakeFiles/raylib-cpp-example.dir/main.cpp.i

CMakeFiles/raylib-cpp-example.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raylib-cpp-example.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/guilherme/Área de Trabalho/PacMan_CPP/src/main.cpp" -o CMakeFiles/raylib-cpp-example.dir/main.cpp.s

CMakeFiles/raylib-cpp-example.dir/map.cpp.o: CMakeFiles/raylib-cpp-example.dir/flags.make
CMakeFiles/raylib-cpp-example.dir/map.cpp.o: /home/guilherme/Área\ de\ Trabalho/PacMan_CPP/src/map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/raylib-cpp-example.dir/map.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raylib-cpp-example.dir/map.cpp.o -c "/home/guilherme/Área de Trabalho/PacMan_CPP/src/map.cpp"

CMakeFiles/raylib-cpp-example.dir/map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raylib-cpp-example.dir/map.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/guilherme/Área de Trabalho/PacMan_CPP/src/map.cpp" > CMakeFiles/raylib-cpp-example.dir/map.cpp.i

CMakeFiles/raylib-cpp-example.dir/map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raylib-cpp-example.dir/map.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/guilherme/Área de Trabalho/PacMan_CPP/src/map.cpp" -o CMakeFiles/raylib-cpp-example.dir/map.cpp.s

CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o: CMakeFiles/raylib-cpp-example.dir/flags.make
CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o: /home/guilherme/Área\ de\ Trabalho/PacMan_CPP/src/pacman.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o -c "/home/guilherme/Área de Trabalho/PacMan_CPP/src/pacman.cpp"

CMakeFiles/raylib-cpp-example.dir/pacman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raylib-cpp-example.dir/pacman.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/guilherme/Área de Trabalho/PacMan_CPP/src/pacman.cpp" > CMakeFiles/raylib-cpp-example.dir/pacman.cpp.i

CMakeFiles/raylib-cpp-example.dir/pacman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raylib-cpp-example.dir/pacman.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/guilherme/Área de Trabalho/PacMan_CPP/src/pacman.cpp" -o CMakeFiles/raylib-cpp-example.dir/pacman.cpp.s

CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o: CMakeFiles/raylib-cpp-example.dir/flags.make
CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o: /home/guilherme/Área\ de\ Trabalho/PacMan_CPP/src/enemy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o -c "/home/guilherme/Área de Trabalho/PacMan_CPP/src/enemy.cpp"

CMakeFiles/raylib-cpp-example.dir/enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raylib-cpp-example.dir/enemy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/guilherme/Área de Trabalho/PacMan_CPP/src/enemy.cpp" > CMakeFiles/raylib-cpp-example.dir/enemy.cpp.i

CMakeFiles/raylib-cpp-example.dir/enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raylib-cpp-example.dir/enemy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/guilherme/Área de Trabalho/PacMan_CPP/src/enemy.cpp" -o CMakeFiles/raylib-cpp-example.dir/enemy.cpp.s

# Object files for target raylib-cpp-example
raylib__cpp__example_OBJECTS = \
"CMakeFiles/raylib-cpp-example.dir/main.cpp.o" \
"CMakeFiles/raylib-cpp-example.dir/map.cpp.o" \
"CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o" \
"CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o"

# External object files for target raylib-cpp-example
raylib__cpp__example_EXTERNAL_OBJECTS =

raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/main.cpp.o
raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/map.cpp.o
raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/pacman.cpp.o
raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/enemy.cpp.o
raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/build.make
raylib-cpp-example: _deps/raylib-build/src/libraylib.a
raylib-cpp-example: _deps/raylib-build/src/external/glfw/src/libglfw3.a
raylib-cpp-example: /usr/lib/x86_64-linux-gnu/librt.so
raylib-cpp-example: /usr/lib/x86_64-linux-gnu/libm.so
raylib-cpp-example: /usr/lib/x86_64-linux-gnu/libX11.so
raylib-cpp-example: /usr/lib/x86_64-linux-gnu/libGL.so
raylib-cpp-example: /usr/lib/x86_64-linux-gnu/libGLU.so
raylib-cpp-example: CMakeFiles/raylib-cpp-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable raylib-cpp-example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raylib-cpp-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raylib-cpp-example.dir/build: raylib-cpp-example

.PHONY : CMakeFiles/raylib-cpp-example.dir/build

CMakeFiles/raylib-cpp-example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raylib-cpp-example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raylib-cpp-example.dir/clean

CMakeFiles/raylib-cpp-example.dir/depend:
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/guilherme/Área de Trabalho/PacMan_CPP/src" "/home/guilherme/Área de Trabalho/PacMan_CPP/src" "/home/guilherme/Área de Trabalho/PacMan_CPP/build" "/home/guilherme/Área de Trabalho/PacMan_CPP/build" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/CMakeFiles/raylib-cpp-example.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/raylib-cpp-example.dir/depend

