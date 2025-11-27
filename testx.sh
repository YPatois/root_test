#!/bin/bash

rm -rf build
rm -rf local

mkdir build

cmake -B build -DCMAKE_INSTALL_PREFIX=`pwd`/local
cmake --build build
cmake --install build

build/RootLessSimpleExample
local/bin/RootLessSimpleExample
