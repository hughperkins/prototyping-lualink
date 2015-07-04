#!/bin/bash

if [[ -d build ]]; then { 
  rm -Rf build
} fi

git log -n 3 --oneline
mkdir build
cd build
cmake ..
make -j 4
cd ..

LUA_CPATH='build/lib?.so;build/lib?.dylib' luajit test.lua
LUA_CPATH='build/lib?.dylib;build/lib?.so' luajit test.lua

