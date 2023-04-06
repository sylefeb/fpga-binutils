#!/bin/bash

# nextpnr

DIR=$(pwd)

echo "DIR is $DIR"

echo "first we patch python3 for large addresses ... well, yes ... (editbin has to be in path)"
EDBIN=$(find /c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/ -name editbin.exe -print -quit)
PY3=$(find /mingw32 -name python3.exe)
pushd .
cd $(dirname $PY3)
"$EDBIN" //LARGEADDRESSAWARE python3.exe
popd

pacman -S --noconfirm --needed git
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-eigen3
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python3
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-qt5
pacman -S --noconfirm --needed gawk
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-make
# pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-pkg-config
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-boost
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-cmake
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python-pip
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python-numpy
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python-pandas
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python-pillow

pip install apycula

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/nextpnr.git
cd nextpnr

# git checkout 90b0e90bbe2fb923154096a8be3660b5e3f4cbb0 ## This is due to a change in prjtrellis

export PYTHONPATH=$PYTHONPATH:$DIR/BUILDS/prjtrellis/libtrellis/:$DIR/BUILDS/prjtrellis/libtrellis/util/common:$DIR/BUILDS/prjtrellis/libtrellis/util/timing

rm -rf build
mkdir build
cd build
cmake .. -G "MinGW Makefiles" -DARCH="ice40;ecp5" -DICEBOX_DATADIR=$DIR/BUILDS/icebox-data/ -DICESTORM_INSTALL_PREFIX=$DIR -DTRELLIS_LIBDIR=$DIR/lib -DTRELLIS_INSTALL_PREFIX=$DIR -DBoost_INCLUDE_DIR=/mingw64/include -DBUILD_HEAP=ON -DUSE_OPENMP=ON -DBUILD_PYTHON=OFF -DBUILD_GUI=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$DIR -DUSE_IPO=OFF
mingw32-make -j16 install
cd ..
cd ..

cd ..
