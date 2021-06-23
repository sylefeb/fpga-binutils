#!/bin/bash

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline 		 ${MINGW_PACKAGE_PREFIX}-libffi ${MINGW_PACKAGE_PREFIX}-tcl git bison flex ${MINGW_PACKAGE_PREFIX}-python3 ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-dlfcn ${MINGW_PACKAGE_PREFIX}-libftdi

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/SymbiFlow/prjxray.git
cd prjxray
git submodule update --init --recursive
mingw32-make PREFIX=$DIR -j16 install
cd ..
