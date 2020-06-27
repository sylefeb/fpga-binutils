#!/bin/bash

# riscv toolchain

pacman -S --noconfirm --needed git ${MINGW_PACKAGE_PREFIX}-gcc-libs gawk ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config  texinfo bison flex diffutils 

mkdir BUILDS
cd BUILDS

git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain

./configure --prefix=/opt/riscv --with-arch=rv32i

make -j 4
find /opt/riscv -executable -type f -exec strip {}\;
cp -R /opt/riscv/* ../../

cd ..
cd ..
