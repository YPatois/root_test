#!/bin/bash

rm -rf build
rm -rf local

mkdir build

cmake -B build -DCMAKE_INSTALL_PREFIX=`pwd`/local
cmake --build build
cmake --install build

rm -rf build main

root test1.C -b -q

git restore main

rm -rf local

mkdir build

cmake -DUSE_GLOB=ON -B build -DCMAKE_INSTALL_PREFIX=`pwd`/local
cmake --build build
cmake --install build

rm -rf build main

root test1.C -b -q

git restore main
