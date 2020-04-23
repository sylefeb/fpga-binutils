#!/bin/bash

# verilator

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make autoconf flex bison

mkdir BUILDS
cd BUILDS

git clone https://git.veripool.org/git/verilator
cd verilator
git checkout 1b94e3b0e28df16122f24d2676404eec41175878
cp /usr/include/FlexLexer.h src/
unset VERILATOR_ROOT
autoconf        # Create ./configure script
./configure
make

strip -S bin/verilator_bin.exe
cp bin/verilator_bin.exe ../../bin/verilator.exe
cp bin/verilator_includer ../../bin/
mkdir ../../include/
mkdir ../../include/gtkwave
mkdir ../../include/vlstd
cd include
cp --parents `cat ../../../verilator_file_list.txt` ../../../include/
cd ..

cd ..
cd ..
