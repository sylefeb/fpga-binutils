#!/bin/bash

pacman -S --noconfirm --needed dos2unix
pacman -S --noconfirm --needed autoconf automake
pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gperf

# see also https://github.com/YosysHQ/fpga-toolchain/blob/main/scripts/compile_yices2.sh

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/SRI-CSL/yices2.git
cd yices2

dos2unix ./scripts/smt2_checks.txt
dos2unix ./src/api/yices_version_template.txt
dos2unix ./src/frontend/smt2/smt2_tokens.txt
dos2unix ./src/frontend/smt2/smt2_keywords.txt
dos2unix ./src/frontend/smt2/smt2_symbols.txt
dos2unix ./src/frontend/smt1/smt_keywords.txt
dos2unix ./src/frontend/yices/yices_keywords.txt
dos2unix ./utils/smt2_parser.txt
dos2unix ./utils/smt_keywords.txt
dos2unix ./utils/smt_parser.txt
dos2unix ./utils/yices_parser.txt

autoconf
./configure --host=x86_64-pc-mingw64
echo 'echo "cygwin"' > autoconf/os
MAKE=/usr/bin/make OPTION=mingw64 /usr/bin/make -j16 static-bin

BINDIR=./build/x86_64-pc-mingw64-release/static_bin

strip -S $BINDIR/yices.exe
strip -S $BINDIR/yices_sat.exe
strip -S $BINDIR/yices_smt.exe
strip -S $BINDIR/yices_smt2.exe

cp $BINDIR/yices.exe      ../../bin/
cp $BINDIR/yices_sat.exe  ../../bin/
cp $BINDIR/yices_smt.exe  ../../bin/
cp $BINDIR/yices_smt2.exe ../../bin/
cp $BINDIR/yices_smt2.exe ../../bin/yices-smt2.exe

cd ..
cd ..
