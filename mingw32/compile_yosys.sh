#!/bin/bash

# yosys

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline 		 ${MINGW_PACKAGE_PREFIX}-libffi ${MINGW_PACKAGE_PREFIX}-tcl git bison flex ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-dlfcn

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/yosys.git
cd yosys
git checkout 26e01a67db4135196b1d25ed89e9e6ceb536f4e3
git apply ../../../patches/yosys_patch.diff
git apply ../../../patches/yosys_patch_ice40_dsp.diff
git clone https://github.com/YosysHQ/abc
cd abc
git checkout 4f5f73d18b137930fb3048c0b385c82fa078db38
git apply ../../../../patches/abc_patch.diff
cd ..
mingw32-make PREFIX=$DIR config-gcc
mingw32-make PREFIX=$DIR -j4
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
