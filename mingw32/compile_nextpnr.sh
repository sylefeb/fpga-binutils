#!/bin/bash

# nextpnr

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-eigen3 ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-qt5 git gawk ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-boost ${MINGW_PACKAGE_PREFIX}-cmake

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/nextpnr.git
cd nextpnr
mkdir build
cd build
cmake .. -G"MSYS Makefiles" -DARCH=ice40 -DBUILD_PYTHON=OFF -DBUILD_GUI=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/mingw32
make
strip -S nextpnr-ice40.exe
strip -S bbasm.exe
cp nextpnr-ice40.exe ../../../bin/
cp bbasm.exe ../../../bin/
cd ..
cd ..

cd ..

