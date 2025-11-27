#!/bin/bash

rm -rf build
rm -rf local

mkdir build

cmake -B build -DCMAKE_INSTALL_PREFIX=`pwd`/local
cmake --build build
cmake --install build

local/bin/RootLessSimpleExample

DOTH=`ls *.h`

rm -f $DOTH

local/bin/RootLessSimpleExample

git restore $DOTH
