# fpga-binutils
Compilation framework for Open Source FPGA tools under Windows / MinGW32.

**Content:** yosys, nextpnr-ice40, icestorm, riscv-toolchain, icarus verilog, verilator, gtkwave

## Pre-compiled binaries
A release package (zip) should be available. I recommend using it as recompiling everything takes a long time (~ 2.5 hours).

## How to build
- Install MSYS2 from https://www.msys2.org/ (make sure to follow the instructions on the page to update to latest)

*Note:* MSYS2 install three different environments (in a single, self contained directory): MSYS, MinGW32 and MinGW64. These scripts are meant for MinG32 only.

- Launch a MinGW32 shell (Start => type 'MinGW', you should see the shell proposed).
- Clone this repo.
- Enter the mingw32 directory.
- Type ./compile_all.sh
- Wait... 
- ... wait more ...
- ... wait a lot more ...
- done! Everything is in subdirectories specially created there. 
- Type package.sh to obtain a nice zip, ready to be uploaded as a release.

*Note:* global environment variables such as your PATH or Boost_DIR can interfere with the build. If you get errors, this is the first thing to check. 
