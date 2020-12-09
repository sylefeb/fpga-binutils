# fpga-binutils
Compilation framework for Open Source FPGA tools under Windows / MinGW64.

This package is prepared to help you get started with the [Silice](https://github.com/sylefeb/Silice) programming language
under Windows. It provides all essential FPGA tools plus the RISC-V toolchain, as well as board programming tools, pre-compiled for MinGW64.
It is tested and known to work for all [Silice](https://github.com/sylefeb/Silice) demo projects.

There are other great packages for Windows and multi-platform, please check alternatives in the notes below.

**Content:** yosys, nextpnr-ice40, icestorm, riscv-toolchain, icarus verilog, verilator, gtkwave, fujprog, dfu-tool

**Important:** see note below about how to setup board USB drivers under Windows

## Pre-compiled binaries
A release package (zip) should be available. I recommend using it as recompiling everything takes a long time (~ 2.5 hours).

## How to build
- Install MSYS2 from https://www.msys2.org/ (make sure to follow the instructions on the page to update to latest)

*Note:* MSYS2 installs three different environments (in a single, self contained directory): MSYS, MinGW32 and MinGW64. These scripts are meant for MinGW**32** only.

- Launch a MinGW32 shell (Start => type 'MinGW', you should see the shell proposed).
- Clone this repo.
- Enter the mingw32 directory.
- Type ./compile_all.sh
- Wait... 
- ... wait more ...
- ... wait a lot more ...
- done! Everything is in subdirectories specially created under the mingw32 directory. 
- Type package.sh to obtain a nice zip, ready to be uploaded as a release.

**Important:** Beware that the scripts will automatically install required packages (with pacman) without prompting. The riscv toolchain will be built in /opt/risc.

*Note:* global environment variables such as your PATH or Boost_DIR can interfere with the build. If you get errors, this is the first thing to check. 

## Notes and tips 

### USB and IceStick under Windows
To program an IceStick with *iceprog* under Windows, you may have to use the [Zadig USB tool](https://zadig.akeo.ie/) to swap the driver. To do this, connect the IceStick, launch Zadig, select the IceStick from the drop-down menu (interface 0), and change the driver for 'libusbK' (select it on the right side). Click replace, wait, disconnect the board, put it back, should be working now. I've done this several times without issues. If it still does not work, verify the USB port is not a hub (some USB ports on computer fronts are) and try again from a native USB port on your motherboard.

### USB and ULX3S under Windows
To program the ECP5 with *fujprog* make sure to install the [FTDI CDM drivers](https://www.ftdichip.com/Drivers/D2XX.htm) (available as a setup exe, see right most column under "comments").

## See also
- MSYS2/MinGW package scripts for FPGA tools - https://github.com/DiodeRed/MinGW-FPGA-Packages
- Multi-platform nightly builds of many FPGA tools https://github.com/open-tool-forge/fpga-toolchain

