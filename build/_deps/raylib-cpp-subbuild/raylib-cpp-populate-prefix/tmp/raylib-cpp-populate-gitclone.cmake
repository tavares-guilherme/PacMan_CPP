
if(NOT "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitinfo.txt" IS_NEWER_THAN "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "https://github.com/RobLoach/raylib-cpp.git" "raylib-cpp-src"
    WORKING_DIRECTORY "/home/guilherme/Área de Trabalho/PacMan/build/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/RobLoach/raylib-cpp.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout ebb379029bd8f73dc42791f5d8fc9c9e607ffd1a --
  WORKING_DIRECTORY "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'ebb379029bd8f73dc42791f5d8fc9c9e607ffd1a'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitinfo.txt"
    "/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/guilherme/Área de Trabalho/PacMan/build/_deps/raylib-cpp-subbuild/raylib-cpp-populate-prefix/src/raylib-cpp-populate-stamp/raylib-cpp-populate-gitclone-lastrun.txt'")
endif()

