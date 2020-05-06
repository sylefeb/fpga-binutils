#!/bin/bash

# icestorm

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline 		 ${MINGW_PACKAGE_PREFIX}-libffi ${MINGW_PACKAGE_PREFIX}-tcl git bison flex ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-dlfcn ${MINGW_PACKAGE_PREFIX}-libftdi

mkdir BUILDS
cd BUILDS

git clone https://github.com/cliffordwolf/icestorm.git
cd icestorm
mingw32-make -j16
strip -S ./icepack/icepack.exe
strip -S ./iceprog/iceprog.exe
strip -S ./icepll/icepll.exe
cp ./icepack/icepack.exe ../../bin/
cp ./iceprog/iceprog.exe ../../bin/
cp ./icepll/icepll.exe ../../bin/
cd ..

cd ..
