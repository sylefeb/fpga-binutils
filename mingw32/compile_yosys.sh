#!/bin/bash

# yosys

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline 		 ${MINGW_PACKAGE_PREFIX}-libffi ${MINGW_PACKAGE_PREFIX}-tcl git bison flex ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-dlfcn

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/yosys.git
cd yosys
git checkout 3b534a203ae733c194415838259709dcf706c7bf
git apply ../../../patches/yosys_patch.diff
git clone https://github.com/berkeley-abc/abc
cd abc
git checkout ba063a1b557a548cbedd963f6bcdf176df14ee8e
git apply ../../../../patches/abc_patch.diff
cd ..
mingw32-make PREFIX=$DIR config-gcc
mingw32-make PREFIX=$DIR -j32
# mingw32-make -k PREFIX=$DIR install
strip -S yosys.exe
strip -S yosys-abc.exe
strip -S yosys-filterlib.exe
cp yosys.exe ../../bin/
cp yosys-abc.exe ../../bin/
cp yosys-filterlib.exe ../../bin/
cp yosys-config ../../bin/
cp yosys-filterlib ../../bin/
cp yosys-smtbmc ../../bin/
cp -R share ../../
cd ..

cd ..
