#!/bin/bash
rm -rf build
mkdir build

cmake -B build
cmake --build build
root test.C -b -q


mv TTestFit.h TTMTestFit.h

sed -i 's/TTestFit.h/TTMTestFit.h/g' TTestFit.cxx

rm -rf build
mkdir build

cmake -B build
cmake --build build
root test.C -b -q

rm -f toto.h
git restore TTestFit.h TTestFit.cxx

mv TTestFit.h toto.h

sed -i 's/TTestFit.h/toto.h/g' TTestFit.cxx

rm -rf build
mkdir build

cmake -B build
cmake --build build
root test.C -b -q

rm -f toto.h
git restore TTestFit.h TTestFit.cxx