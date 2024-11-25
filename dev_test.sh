#!/bin/bash -x

rm -rf build
rm -rf local

mkdir build

cmake -B build -DCMAKE_INSTALL_PREFIX=`pwd`/local
cmake --build build
cmake --install build


root test.C -b -q

#exit 0

DOTH=`ls *.h`
rm -f *.h

root test.C -b -q

git restore $DOTH
