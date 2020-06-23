#!/bin/bash

mkdir bin

pacman -S --noconfirm --needed git gcc g++ make cmake automake

./compile_icestorm.sh
./compile_yosys.sh
./compile_nextpnr.sh
./compile_silice.sh

./compile_iverilog.sh
./compile_verilator.sh
./compile_gtkwave.sh

cp /mingw64/bin/libatk-1.0-0.dll ./bin/
cp /mingw64/bin/libboost_filesystem-mt.dll ./bin/
cp /mingw64/bin/libboost_program_options-mt.dll ./bin/
cp /mingw64/bin/libboost_python38-mt.dll ./bin/
cp /mingw64/bin/libboost_thread-mt.dll ./bin/
cp /mingw64/bin/libbz2-1.dll ./bin/
cp /mingw64/bin/libcairo-2.dll ./bin/
cp /mingw64/bin/libdatrie-1.dll ./bin/
cp /mingw64/bin/libdouble-conversion.dll ./bin/
cp /mingw64/bin/libffi-7.dll ./bin/
cp /mingw64/bin/libfontconfig-1.dll ./bin/
cp /mingw64/bin/libfreetype-6.dll ./bin/
cp /mingw64/bin/libfribidi-0.dll ./bin/
cp /mingw64/bin/libftdi1.dll ./bin/
cp /mingw64/bin/libgcc_s_dw2-1.dll ./bin/
cp /mingw64/bin/libgdk-win32-2.0-0.dll ./bin/
cp /mingw64/bin/libgdk_pixbuf-2.0-0.dll ./bin/
cp /mingw64/bin/libgio-2.0-0.dll ./bin/
cp /mingw64/bin/libglib-2.0-0.dll ./bin/
cp /mingw64/bin/libgmodule-2.0-0.dll ./bin/
cp /mingw64/bin/libgobject-2.0-0.dll ./bin/
cp /mingw64/bin/libgraphite2.dll ./bin/
cp /mingw64/bin/libgthread-2.0-0.dll ./bin/
cp /mingw64/bin/libgtk-win32-2.0-0.dll ./bin/
cp /mingw64/bin/libharfbuzz-0.dll ./bin/
cp /mingw64/bin/libhistory8.dll ./bin/
cp /mingw64/bin/libiconv-2.dll ./bin/
cp /mingw64/bin/libicudt65.dll ./bin/
cp /mingw64/bin/libicuin65.dll ./bin/
cp /mingw64/bin/libicuuc65.dll ./bin/
cp /mingw64/bin/libintl-8.dll ./bin/
cp /mingw64/bin/liblzma-5.dll ./bin/
cp /mingw64/bin/libpango-1.0-0.dll ./bin/
cp /mingw64/bin/libpangocairo-1.0-0.dll ./bin/
cp /mingw64/bin/libpangoft2-1.0-0.dll ./bin/
cp /mingw64/bin/libpangowin32-1.0-0.dll ./bin/
cp /mingw64/bin/libpcre-1.dll ./bin/
cp /mingw64/bin/libpcre2-16-0.dll ./bin/
cp /mingw64/bin/libpixman-1-0.dll ./bin/
cp /mingw64/bin/libpng16-16.dll ./bin/
cp /mingw64/bin/libpython3.8.dll ./bin/
cp /mingw64/bin/libreadline8.dll ./bin/
cp /mingw64/bin/libstdc++-6.dll ./bin/
cp /mingw64/bin/libtermcap-0.dll ./bin/
cp /mingw64/bin/libthai-0.dll ./bin/
cp /mingw64/bin/libusb-1.0.dll ./bin/
cp /mingw64/bin/libwinpthread-1.dll ./bin/
cp /mingw64/bin/libxml2-2.dll ./bin/
cp /mingw64/bin/libzstd.dll ./bin/
cp /mingw64/bin/Qt5Core.dll ./bin/
cp /mingw64/bin/Qt5Gui.dll ./bin/
cp /mingw64/bin/Qt5Widgets.dll ./bin/
cp /mingw64/bin/tcl86.dll ./bin/
cp /mingw64/bin/tk86.dll ./bin/
cp /mingw64/bin/zlib1.dll ./bin/
cp -R /mingw64/lib/gdk-pixbuf-2.0 ./lib/
