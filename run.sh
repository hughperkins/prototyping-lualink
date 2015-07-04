#!/bin/bash

if [[ -d build ]]; then { 
  rm -Rf build
} fi

mkdir build
cd build
cmake ..
make -j 4
cd ..

LUA_CPATH=build/lib?.so luajit test.lua

