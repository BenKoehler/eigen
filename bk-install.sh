#!/bin/bash
cd ..
mv eigen/ eigen-src/
#remove previous installation
rm -r eigen-build
rm -r eigen
mkdir eigen-build
mkdir eigen
cd eigen-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../eigen \
../eigen-src
make -j 8
make install
cd ..
rm -r eigen-build
cp eigen-src/bk.cmake eigen

