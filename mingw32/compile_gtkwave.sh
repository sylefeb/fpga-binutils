#!/bin/bash

# GtkWave

pacman -S --noconfirm --needed ${MINGW_PACKAGE_PREFIX}-gtk2 ${MINGW_PACKAGE_PREFIX}-tk ${MINGW_PACKAGE_PREFIX}-tklib ${MINGW_PACKAGE_PREFIX}-tcl ${MINGW_PACKAGE_PREFIX}-tcllib ${MINGW_PACKAGE_PREFIX}-xz svn perlxml intltool automake ${MINGW_PACKAGE_PREFIX}-gcc automake

mkdir BUILDS
cd BUILDS

mkdir gtkwave
cd gtkwave
svn checkout svn://svn.code.sf.net/p/gtkwave/code/
cd code
cd gtkwave3-gtk3
./autogen.sh
./configure	--with-tcl=${MINGW_PREFIX}/lib/	 --with-tk=${MINGW_PREFIX}/lib/  --host=${MINGW_CHOST}  --target=${MINGW_CHOST}  --build=${MINGW_CHOST}  --prefix=${MINGW_PREFIX}
make -j16
cp -R /mingw32/lib/tcl8.6 ../../../../lib/
strip -S ./src/gtkwave.exe
cp ./src/gtkwave.exe ../../../../bin/
cd ..
cd ..
cd ..

cd ..
