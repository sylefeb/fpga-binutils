#!/bin/bash

DIR=$(pwd)

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-cmake ${MINGW_PACKAGE_PREFIX}-libftdi make

mkdir BUILDS
cd BUILDS

git clone --recursive git://git.code.sf.net/p/dfu-util/dfu-util
cd dfu-util

./autogen.sh
./configure
mingw32-make -j16

strip -S src/dfu-util.exe
strip -S src/dfu-suffix.exe
strip -S src/dfu-prefix.exe
cp src/dfu-util.exe ../../bin/
cp src/dfu-suffix.exe ../../bin/
cp src/dfu-prefix.exe ../../bin/

cd ..
cd ..
