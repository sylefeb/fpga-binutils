pacman -S --noconfirm --needed zip

cd ..
zip -r fpga-binutils.zip ./mingw32/bin/ ./mingw32/lib/ ./mingw32/include/
