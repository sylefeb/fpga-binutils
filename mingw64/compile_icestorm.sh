#!/bin/bash

# icestorm

pacman -R --noconfirm ${MINGW_PACKAGE_PREFIX}-icestorm

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline ${MINGW_PACKAGE_PREFIX}-libffi ${MINGW_PACKAGE_PREFIX}-tcl git bison flex ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-dlfcn ${MINGW_PACKAGE_PREFIX}-libftdi

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/cliffordwolf/icestorm.git
cd icestorm
mingw32-make PREFIX=$DIR -j16 install
strip -S ./icepack/icepack.exe
strip -S ./iceprog/iceprog.exe
strip -S ./icepll/icepll.exe
cp ./icepack/icepack.exe ../../bin/
cp ./iceprog/iceprog.exe ../../bin/
cp ./icepll/icepll.exe ../../bin/
cd ..

mkdir -p icebox-data
cp icestorm/icebox/*.txt icebox-data/
cp icestorm/icefuzz/*.txt icebox-data/

cd ..
