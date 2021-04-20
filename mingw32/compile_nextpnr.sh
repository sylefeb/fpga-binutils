#!/bin/bash

# nextpnr

DIR=$(pwd)

echo "first we patch python3 for large addresses ... well, yes ... (editbin has to be in path)"
EDBIN=$(find /c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/ -name editbin.exe -print -quit)
PY3=$(find /mingw32 -name python3.exe)
pushd .
cd $(dirname $PY3)
"$EDBIN" //LARGEADDRESSAWARE python3.exe
popd

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-eigen3 ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-qt5 git gawk ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-boost ${MINGW_PACKAGE_PREFIX}-cmake

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/nextpnr.git
cd nextpnr
rm -rf build
mkdir build
cd build
cmake .. -G "MinGW Makefiles" -DARCH="ice40;ecp5" -DICEBOX_DATADIR=$DIR/BUILDS/icebox-data/ -DTRELLIS_INSTALL_PREFIX=$DIR -DBUILD_PYTHON=OFF -DBUILD_GUI=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$DIR -DUSE_IPO=OFF
mingw32-make install
cd ..
cd ..

cd ..
