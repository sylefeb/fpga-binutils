#!/bin/bash

# yosys

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-readline 		 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-libffi 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-tcl 
pacman -S --noconfirm --needed git 
pacman -S --noconfirm --needed bison 
pacman -S --noconfirm --needed flex 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-python3 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-tcl 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-make 
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-dlfcn
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-pkg-config 

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/yosys.git
cd yosys
# git checkout c785cb7fe35da70fe833441c70d0186ed3a892fe
# git apply ../../../patches/yosys_patch.diff
git apply ../../../patches/yosys_patch_ice40_dsp.diff
# git clone https://github.com/YosysHQ/abc
# cd abc
# git checkout 3da9357
# git apply ../../../../patches/abc_patch.diff
# cd ..
mingw32-make PREFIX=$DIR config-msys2-64
mingw32-make PREFIX=$DIR -j16 PYTHON="C:/msys64/mingw64/bin/python3"
strip -S yosys.exe
strip -S yosys-abc.exe
strip -S yosys-filterlib.exe
cp yosys.exe ../../bin/
cp yosys-abc.exe ../../bin/
cp yosys-filterlib.exe ../../bin/
cp yosys-config ../../bin/
cp yosys-filterlib ../../bin/
cp yosys-smtbmc.exe ../../bin/
cp yosys-smtbmc-script.py ../../bin/
cp -R share ../../bin/
cd ..

cd ..
