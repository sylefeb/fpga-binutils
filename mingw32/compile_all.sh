#!/bin/bash

mkdir bin

pacman -S --noconfirm --needed git gcc g++ make cmake automake

./compile_fujprog.sh

./compile_yosys.sh
./compile_icestorm.sh
./compile_trellis.sh
./compile_nextpnr.sh

./compile_iverilog.sh
./compile_verilator.sh
./compile_gtkwave.sh

./compile_silice.sh

./compile_riscv.sh

for file in ./bin/*.exe
do
  strip "$file"
done

cp /mingw32/bin/libatk-*.dll ./bin/
cp /mingw32/bin/libboost_filesystem-mt.dll ./bin/
cp /mingw32/bin/libboost_program_options-mt.dll ./bin/
cp /mingw32/bin/libboost_python*-mt.dll ./bin/
cp /mingw32/bin/libboost_thread-mt.dll ./bin/
cp /mingw32/bin/libbz2-*.dll ./bin/
cp /mingw32/bin/libcairo-*.dll ./bin/
cp /mingw32/bin/libdatrie-*.dll ./bin/
cp /mingw32/bin/libdouble-conversion.dll ./bin/
cp /mingw32/bin/libffi-*.dll ./bin/
cp /mingw32/bin/libfontconfig-*.dll ./bin/
cp /mingw32/bin/libfreetype-*.dll ./bin/
cp /mingw32/bin/libfribidi-*.dll ./bin/
cp /mingw32/bin/libftdi1.dll ./bin/
cp /mingw32/bin/libgcc_s_dw2-*.dll ./bin/
cp /mingw32/bin/libgdk-win32-*.dll ./bin/
cp /mingw32/bin/libgdk_pixbuf-*.dll ./bin/
cp /mingw32/bin/libgio-*.dll ./bin/
cp /mingw32/bin/libglib-*.dll ./bin/
cp /mingw32/bin/libgmodule-*.dll ./bin/
cp /mingw32/bin/libgobject-*.dll ./bin/
cp /mingw32/bin/libgraphite2.dll ./bin/
cp /mingw32/bin/libgthread-*.dll ./bin/
cp /mingw32/bin/libgtk-win32-*.dll ./bin/
cp /mingw32/bin/libharfbuzz-*.dll ./bin/
cp /mingw32/bin/libhistory*.dll ./bin/
cp /mingw32/bin/libiconv-2.dll ./bin/
cp /mingw32/bin/libicudt*.dll ./bin/
cp /mingw32/bin/libicuin*.dll ./bin/
cp /mingw32/bin/libicuuc*.dll ./bin/
cp /mingw32/bin/libintl-*.dll ./bin/
cp /mingw32/bin/liblzma-*.dll ./bin/
cp /mingw32/bin/libpango-*.dll ./bin/
cp /mingw32/bin/libpangocairo-*.dll ./bin/
cp /mingw32/bin/libpangoft2-*.dll ./bin/
cp /mingw32/bin/libpangowin32-*.dll ./bin/
cp /mingw32/bin/libpcre-*.dll ./bin/
cp /mingw32/bin/libpcre2-*.dll ./bin/
cp /mingw32/bin/libpixman-*.dll ./bin/
cp /mingw32/bin/libpng16-*.dll ./bin/
cp /mingw32/bin/libpython*.dll ./bin/
cp /mingw32/bin/libreadline*.dll ./bin/
cp /mingw32/bin/libstdc++-*.dll ./bin/
cp /mingw32/bin/libtermcap-*.dll ./bin/
cp /mingw32/bin/libthai-*.dll ./bin/
cp /mingw32/bin/libusb-*.dll ./bin/
cp /mingw32/bin/libwinpthread-*.dll ./bin/
cp /mingw32/bin/libxml2-*.dll ./bin/
cp /mingw32/bin/libzstd.dll ./bin/
cp /mingw32/bin/Qt5Core.dll ./bin/
cp /mingw32/bin/Qt5Gui.dll ./bin/
cp /mingw32/bin/Qt5Widgets.dll ./bin/
cp /mingw32/bin/tcl86.dll ./bin/
cp /mingw32/bin/tk86.dll ./bin/
cp /mingw32/bin/zlib1.dll ./bin/
cp /mingw32/bin/libdl.dll ./bin/
cp /mingw32/bin/libbrotlidec.dll ./bin/
cp /mingw32/bin/libbrotlicommon.dll ./bin/

cp -R /mingw32/lib/gdk-pixbuf-2.0 ./lib/
