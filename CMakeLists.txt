cmake_minimum_required(VERSION 2.8)

set(HOME $ENV{HOME})
include_directories(${HOME}/torch/install/include)

#if( APPLE )
#message("APPLE detected")
#set(CMAKE_SHARED_LINKER_FLAGS "-bundle -undefined dynamic_lookup")
#elseif( UNIX)
#message("UNIX detected")
#set(CMAKE_SHARED_LINKER_FLAGS "-bundle -undefined suppress")
#endif()

add_library(mylib SHARED mylib.cpp)

IF(APPLE)
  SET_TARGET_PROPERTIES(mylib PROPERTIES
    LINK_FLAGS "-undefined dynamic_lookup")
ENDIF()

