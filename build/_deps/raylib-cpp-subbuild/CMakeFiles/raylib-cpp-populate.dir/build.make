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
CMAKE_SOURCE_DIR = "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild"

# Utility rule file for raylib-cpp-populate.

# Include the progress variables for this target.
include CMakeFiles/raylib-cpp-populate.dir/progress.make

CMakeFiles/raylib-cpp-populate: CMakeFiles/raylib-cpp-populate-complete


CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-mkdir
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-update
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-patch
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-build
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install
CMakeFiles/raylib-cpp-populate-complete: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Completed 'raylib-cpp-populate'"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles"
	/usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles/raylib-cpp-populate-complete"
	/usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-done"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E echo_append
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'raylib-cpp-populate'"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/tmp"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src"
	/usr/bin/cmake -E make_directory "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp"
	/usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-mkdir"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitinfo.txt
raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps" && /usr/bin/cmake -P "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/tmp/raylib-cpp-populate-gitclone.cmake"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps" && /usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-update: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-src" && /usr/bin/cmake -P "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/tmp/raylib-cpp-populate-gitupdate.cmake"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-patch: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'raylib-cpp-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-patch"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure: raylib-cpp-populate-prefix/tmp/raylib-cpp-populate-cfgcmd.txt
raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-update
raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E echo_append
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-build: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E echo_append
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-build"

raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-test: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'raylib-cpp-populate'"
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E echo_append
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-build" && /usr/bin/cmake -E touch "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-test"

raylib-cpp-populate: CMakeFiles/raylib-cpp-populate
raylib-cpp-populate: CMakeFiles/raylib-cpp-populate-complete
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-install
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-mkdir
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-download
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-update
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-patch
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-configure
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-build
raylib-cpp-populate: raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-test
raylib-cpp-populate: CMakeFiles/raylib-cpp-populate.dir/build.make

.PHONY : raylib-cpp-populate

# Rule to build all files generated by this target.
CMakeFiles/raylib-cpp-populate.dir/build: raylib-cpp-populate

.PHONY : CMakeFiles/raylib-cpp-populate.dir/build

CMakeFiles/raylib-cpp-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raylib-cpp-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raylib-cpp-populate.dir/clean

CMakeFiles/raylib-cpp-populate.dir/depend:
	cd "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild" "/home/guilherme/Área de Trabalho/PacMan_CPP/build/_deps/raylib-cpp-subbuild/CMakeFiles/raylib-cpp-populate.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/raylib-cpp-populate.dir/depend

