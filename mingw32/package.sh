#!/bin/bash

pacman -S --noconfirm --needed zip

for file in ./bin/*.exe
do
  strip "$file"
done

cd ..
zip -r fpga-binutils-32.zip ./mingw32/bin/ ./mingw32/lib/ ./mingw32/include/ ./mingw32/libexec/ ./mingw32/share/ ./mingw32/riscv32-unknown-elf/
