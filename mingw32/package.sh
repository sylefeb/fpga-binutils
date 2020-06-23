pacman -S --noconfirm --needed zip

cd ..
zip -r fpga-binutils.zip ./mingw32/bin/ ./mingw32/lib/ ./mingw32/include/ ./mingw32/libexec/ ./mingw32/share/ ./mingw32/riscv32-unknown-elf/
