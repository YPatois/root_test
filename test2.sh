#!/bin/bash
rm -rf build
mkdir build

cmake -B build
cmake --build build
root test.C -b -q


mv TTestFit.h TToto.h
mv TTestFit.cxx TToto.cxx

sed -i 's/TTestFit.h/TToto.h/g' TToto.cxx

rm -rf build
mkdir build

cmake -B build
cmake --build build
root test.C -b -q

rm -f TToto.*
git restore TTestFit.h TTestFit.cxx