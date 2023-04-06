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

pacman -R --noconfirm ${MINGW_PACKAGE_PREFIX}-prjtrellis

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-eigen3
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python3
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-qt5
pacman -S --noconfirm --needed git
pacman -S --noconfirm --needed gawk
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-make
# pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-pkg-config
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-boost
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-cmake

mkdir BUILDS
cd BUILDS

git clone --recursive https://github.com/YosysHQ/prjtrellis
cd prjtrellis
# git apply ../../../patches/trellis_patch.diff

cd libtrellis

cmake . -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=$DIR -DBoost_INCLUDE_DIR=/mingw64/include

mingw32-make install

cd ..
cd ..
cd ..
