#!/bin/bash

# openocd

DIR=$(pwd)

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-libtool ${MINGW_PACKAGE_PREFIX}-cmake automake autoconf texinfo

mkdir BUILDS
cd BUILDS

git clone --recursive https://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code

./bootstrap
./configure --prefix=$DIR
mingw32-make -j16 install

cd ..
cd ..
