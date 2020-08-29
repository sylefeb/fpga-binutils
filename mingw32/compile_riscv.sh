#!/bin/bash

# riscv toolchain

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc-libs gawk ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config  texinfo bison flex diffutils 

mkdir BUILDS
cd BUILDS

git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain

if [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
echo "Building for MinGW32"
./configure --prefix=/opt/riscv --with-arch=rv32i --with-host=mingw-w64-i686
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
echo "Building for MinGW64"
./configure --prefix=/opt/riscv --with-arch=rv32i
fi

make -j 16
find /opt/riscv -executable -type f -exec strip {} +
cp -R /opt/riscv/* ../../

cd ..
cd ..
