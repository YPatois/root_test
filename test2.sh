#!/bin/bash
rm -rf build local
mkdir build

cmake -B build
cmake --build build
root test2.C -b -q

rm -rf build
mkdir build

PREFIX="TTMAB"

mv TTAB.h ${PREFIX}.h
mv TTAB.cxx ${PREFIX}.cxx

sed -i "s/TTAB.h/${PREFIX}.h/g" ${PREFIX}.cxx
sed -i "s/TTAB.h/${PREFIX}.h/g" CMakeLists.txt
ls
grep -r "TTAB" .

cmake -B build
cmake --build build
root test2.C -b -q

rm -f ${PREFIX}.*
git restore TTAB.h TTAB.cxx