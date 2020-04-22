#!/bin/bash

mkdir BUILDS
cd BUILDS

pacman -S --noconfirm --needed unzip wget perl

wget -c https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_windows-x64_bin.zip
unzip -o openjdk-14.0.1_windows-x64_bin.zip

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export PATH=$PATH:$DIR/jdk-14.0.1/bin/

git clone --recurse-submodules git@github.com:sylefeb/Silice.git
cd Silice

mkdir build-silice
cd build-silice
cmake -DCMAKE_BUILD_TYPE=Release -G "MSYS Makefiles" ..
make -j16 install
cd ..

cp ./bin/silice.exe ../../bin/

# mkdir build-silicehe
# cd build-silicehe
# cmake -DCMAKE_BUILD_TYPE=Release -G "MSYS Makefiles" ../tools/silice_hardware_emulator
# make install
# cd ..

cd ..

