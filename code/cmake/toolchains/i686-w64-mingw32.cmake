set(GNU_HOST i686-w64-mingw32)
set(CMAKE_SYSTEM_PROCESSOR "i686")

set(COMPILER_PREFIX "${GNU_HOST}-")

set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_CROSSCOMPILING TRUE)
set(WIN32 TRUE)
set(MINGW TRUE)

set(CMAKE_C_FLAGS ${CMAKE_C_FLAGS} "-m32")
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-m32")
set(CMAKE_MODULE_LINKER_FLAGS ${CMAKE_MODULE_LINKER_FLAGS} "-m32")
set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS} "-m32")
set(CMAKE_SHARED_LINKER_FLAGS ${CMAKE_SHARED_LINKER_FLAGS} "-m32")
set(CMAKE_STATIC_LINKER_FLAGS ${CMAKE_STATIC_LINKER_FLAGS} "-m32")

#include(CMakeForceCompiler)
#cmake_force_c_compiler(${COMPILER_PREFIX}gcc GNU)
#cmake_force_cxx_compiler(${COMPILER_PREFIX}g++ GNU)
set(CMAKE_RC_COMPILER ${COMPILER_PREFIX}windres)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

message(STATUS "Building with 32-bit MinGW cross compiler")