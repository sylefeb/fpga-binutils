pacman -S --noconfirm --needed zip

cd ..
zip -r fpga-binutils-x64.zip ./mingw64/bin/ ./mingw64/lib/ ./mingw64/include/ ./mingw64/libexec/ ./mingw64/share/ ./mingw64/riscv32-unknown-elf/
