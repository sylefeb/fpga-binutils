#!/bin/bash

DIR=$(pwd)

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-cmake ${MINGW_PACKAGE_PREFIX}-libftdi

mkdir BUILDS
cd BUILDS

git clone --recursive https://github.com/kost/fujprog
cd fujprog

cmake . -G "MinGW Makefiles"
mingw32-make -j8

strip -S fujprog.exe
cp fujprog.exe ../../bin/

cd ..
cd ..
