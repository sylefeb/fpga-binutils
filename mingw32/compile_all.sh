#!/bin/bash

./compile_icestorm.sh
./compile_yosys.sh
./compile_nextpnr.sh
./compile_silice.sh

./compile_iverilog.sh
./compile_verilator.sh
./compile_gtkwave.sh

cp /mingw32/bin/libatk-1.0-0.dll ./bin/
cp /mingw32/bin/libboost_filesystem-mt.dll ./bin/
cp /mingw32/bin/libboost_program_options-mt.dll ./bin/
cp /mingw32/bin/libboost_python38-mt.dll ./bin/
cp /mingw32/bin/libboost_thread-mt.dll ./bin/
cp /mingw32/bin/libbz2-1.dll ./bin/
cp /mingw32/bin/libcairo-2.dll ./bin/
cp /mingw32/bin/libdatrie-1.dll ./bin/
cp /mingw32/bin/libdouble-conversion.dll ./bin/
cp /mingw32/bin/libffi-7.dll ./bin/
cp /mingw32/bin/libfontconfig-1.dll ./bin/
cp /mingw32/bin/libfreetype-6.dll ./bin/
cp /mingw32/bin/libfribidi-0.dll ./bin/
cp /mingw32/bin/libftdi1.dll ./bin/
cp /mingw32/bin/libgcc_s_dw2-1.dll ./bin/
cp /mingw32/bin/libgdk-win32-2.0-0.dll ./bin/
cp /mingw32/bin/libgdk_pixbuf-2.0-0.dll ./bin/
cp /mingw32/bin/libgio-2.0-0.dll ./bin/
cp /mingw32/bin/libglib-2.0-0.dll ./bin/
cp /mingw32/bin/libgmodule-2.0-0.dll ./bin/
cp /mingw32/bin/libgobject-2.0-0.dll ./bin/
cp /mingw32/bin/libgraphite2.dll ./bin/
cp /mingw32/bin/libgthread-2.0-0.dll ./bin/
cp /mingw32/bin/libgtk-win32-2.0-0.dll ./bin/
cp /mingw32/bin/libharfbuzz-0.dll ./bin/
cp /mingw32/bin/libhistory8.dll ./bin/
cp /mingw32/bin/libiconv-2.dll ./bin/
cp /mingw32/bin/libicudt65.dll ./bin/
cp /mingw32/bin/libicuin65.dll ./bin/
cp /mingw32/bin/libicuuc65.dll ./bin/
cp /mingw32/bin/libintl-8.dll ./bin/
cp /mingw32/bin/liblzma-5.dll ./bin/
cp /mingw32/bin/libpango-1.0-0.dll ./bin/
cp /mingw32/bin/libpangocairo-1.0-0.dll ./bin/
cp /mingw32/bin/libpangoft2-1.0-0.dll ./bin/
cp /mingw32/bin/libpangowin32-1.0-0.dll ./bin/
cp /mingw32/bin/libpcre-1.dll ./bin/
cp /mingw32/bin/libpcre2-16-0.dll ./bin/
cp /mingw32/bin/libpixman-1-0.dll ./bin/
cp /mingw32/bin/libpng16-16.dll ./bin/
cp /mingw32/bin/libpython3.8.dll ./bin/
cp /mingw32/bin/libreadline8.dll ./bin/
cp /mingw32/bin/libstdc++-6.dll ./bin/
cp /mingw32/bin/libtermcap-0.dll ./bin/
cp /mingw32/bin/libthai-0.dll ./bin/
cp /mingw32/bin/libusb-1.0.dll ./bin/
cp /mingw32/bin/libwinpthread-1.dll ./bin/
cp /mingw32/bin/libxml2-2.dll ./bin/
cp /mingw32/bin/libzstd.dll ./bin/
cp /mingw32/bin/Qt5Core.dll ./bin/
cp /mingw32/bin/Qt5Gui.dll ./bin/
cp /mingw32/bin/Qt5Widgets.dll ./bin/
cp /mingw32/bin/tcl86.dll ./bin/
cp /mingw32/bin/tk86.dll ./bin/
cp /mingw32/bin/zlib1.dll ./bin/
cp -R /mingw32/lib/gdk-pixbuf-2.0 ./lib/