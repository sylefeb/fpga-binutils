#!/bin/bash

# icarus verilog

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gcc-libs ${MINGW_PACKAGE_PREFIX}-readline autoconf flex bison git ${MINGW_PACKAGE_PREFIX}-gcc ${MINGW_PACKAGE_PREFIX}-make ${MINGW_PACKAGE_PREFIX}-pkg-config ${MINGW_PACKAGE_PREFIX}-termcap ${MINGW_PACKAGE_PREFIX}-gperf

mkdir BUILDS
cd BUILDS

git clone https://github.com/steveicarus/iverilog
cd iverilog
git apply ../../iverilog_patch.diff
./autoconf.sh
./configure --prefix=/mingw32
make -j16
strip -S ./driver/iverilog.exe
strip -S ./driver-vpi/iverilog-vpi.exe
strip -S ivl.exe
strip -S ./ivlpp/ivlpp.exe
strip -S ./vvp/vvp.exe
cp ./driver/iverilog.exe ../../bin/
cp ./driver-vpi/iverilog-vpi.exe ../../bin/
cp ./vvp/vvp.exe ../../bin/
mkdir ../../lib/
mkdir ../../lib/ivl/
cp ./ivlpp/ivlpp.exe ../../lib/ivl/
cp ivl.exe ../../lib/ivl/
cp `cat ../../iverilog_file_list.txt` ../../lib/ivl/

cd ..

cd ..
