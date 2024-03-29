#!/bin/bash

mkdir bin

pacman -S --noconfirm --needed git gcc g++ make cmake automake bison flex

# ./compile_fujprog.sh
./compile_dfu-util.sh
# ./compile_openFPGALoader.sh

./compile_icestorm.sh
./compile_trellis.sh
./compile_nextpnr.sh

./compile_yosys.sh
./compile_symbiyosys.sh
./compile_yices2-smt2.sh

# ./compile_nextpnr-gowin.sh
# ./compile_nextpnr-xilinx.sh

# ./compile_iverilog.sh
# ./compile_verilator.sh
# ./compile_gtkwave.sh

# ./compile_silice.sh

# ./compile_riscv.sh

for file in ./bin/*.exe
do
  strip "$file"
done

# cp /mingw64/bin/libatk*.dll ./bin/
# cp /mingw64/bin/libboost_filesystem-mt.dll ./bin/
# cp /mingw64/bin/libboost_program_options-mt.dll ./bin/
# cp /mingw64/bin/libboost_python38-mt.dll ./bin/
# cp /mingw64/bin/libboost_thread-mt.dll ./bin/
# cp /mingw64/bin/libbz2*.dll ./bin/
# cp /mingw64/bin/libcairo*.dll ./bin/
# cp /mingw64/bin/libdatrie*.dll ./bin/
# cp /mingw64/bin/libdouble-conversion.dll ./bin/
# cp /mingw64/bin/libffi*.dll ./bin/
# cp /mingw64/bin/libfontconfig*.dll ./bin/
# cp /mingw64/bin/libfreetype*.dll ./bin/
# cp /mingw64/bin/libfribidi*.dll ./bin/
# cp /mingw64/bin/libftdi1.dll ./bin/
# cp /mingw64/bin/libgcc_s_dw*.dll ./bin/
# cp /mingw64/bin/libgdk-win*.dll ./bin/
# cp /mingw64/bin/libgdk_pixbuf-*.dll ./bin/
# cp /mingw64/bin/libgio-*.dll ./bin/
# cp /mingw64/bin/libglib-*.dll ./bin/
# cp /mingw64/bin/libgmodule-*.dll ./bin/
# cp /mingw64/bin/libgobject-*.dll ./bin/
# cp /mingw64/bin/libgraphite2.dll ./bin/
# cp /mingw64/bin/libgthread-*.dll ./bin/
# cp /mingw64/bin/libgtk-win*.dll ./bin/
# cp /mingw64/bin/libharfbuzz-*.dll ./bin/
# cp /mingw64/bin/libhistory*.dll ./bin/
# cp /mingw64/bin/libiconv-2.dll ./bin/
# cp /mingw64/bin/libicudt*.dll ./bin/
# cp /mingw64/bin/libicuin*.dll ./bin/
# cp /mingw64/bin/libicuuc*.dll ./bin/
# cp /mingw64/bin/libintl-*.dll ./bin/
# cp /mingw64/bin/liblzma-*.dll ./bin/
# cp /mingw64/bin/libpango-*.dll ./bin/
# cp /mingw64/bin/libpangocairo-*.dll ./bin/
# cp /mingw64/bin/libpangoft2-*.dll ./bin/
# cp /mingw64/bin/libpangowin*.dll ./bin/
# cp /mingw64/bin/libpcre-*.dll ./bin/
# cp /mingw64/bin/libpcre2-*.dll ./bin/
# cp /mingw64/bin/libpixman-*.dll ./bin/
# cp /mingw64/bin/libpng16-*.dll ./bin/
# cp /mingw64/bin/libpython*.dll ./bin/
# cp /mingw64/bin/libreadline*.dll ./bin/
# cp /mingw64/bin/libstdc++-*.dll ./bin/
# cp /mingw64/bin/libtermcap-*.dll ./bin/
# cp /mingw64/bin/libthai-*.dll ./bin/
# # cp /mingw64/bin/libusb-*.dll ./bin/ # it seems latest MinGW libusb has an issue, including the latest working in package (MD5 8cdefad270d5d2c4f910fffb7524f2ab)
# cp /mingw64/bin/libwinpthread-*.dll ./bin/
# cp /mingw64/bin/libxml2-*.dll ./bin/
# cp /mingw64/bin/libzstd.dll ./bin/
# cp /mingw64/bin/Qt5Core.dll ./bin/
# cp /mingw64/bin/Qt5Gui.dll ./bin/
# cp /mingw64/bin/Qt5Widgets.dll ./bin/
# cp /mingw64/bin/tcl86.dll ./bin/
# cp /mingw64/bin/tk86.dll ./bin/
# cp /mingw64/bin/zlib1.dll ./bin/
# cp /mingw64/bin/libdl.dll ./bin/
# cp /mingw32/bin/libbrotlidec.dll ./bin/
# cp /mingw32/bin/libbrotlicommon.dll ./bin/
# cp /mingw32/bin/libgcc_s_seh-*.dll ./bin/

# cp -R /mingw64/lib/gdk-pixbuf-2.0 ./lib/
