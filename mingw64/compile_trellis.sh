#!/bin/bash

# prjtrellis

echo "first we patch cc1plus for large addresses ... well, yes ... (editbin has to be in path)"
EDBIN=$(find /c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/ -name editbin.exe -print -quit)

DIR=$(pwd)

CC1=$(find /mingw32 -name cc1plus.exe)
pushd .
cd $(dirname $CC1)
"$EDBIN" //LARGEADDRESSAWARE cc1plus.exe
popd

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-eigen3 ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-qt5 git gawk ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-boost ${MINGW_PACKAGE_PREFIX}-cmake

mkdir BUILDS
cd BUILDS

git clone --recursive https://github.com/YosysHQ/prjtrellis
cd prjtrellis

cd libtrellis

cmake . -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=$DIR

mingw32-make install

cd ..
cd ..
cd ..
