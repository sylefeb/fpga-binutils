# fpga-binutils

This package is prepared to help you get started with the [Silice](https://github.com/sylefeb/Silice) programming language
under Windows/MinGW. It provides essential FPGA tools that are not yet available as standard packages or need patches, pre-compiled for MinGW64.
It is tested and known to work for all [Silice](https://github.com/sylefeb/Silice) demo projects.

**Content:** yosys (patched for ice40 DSP), nextpnr-gowin, nextpnr-xilinx, symbiyosys, yices.

**Important:** see note at the end about how to setup boards USB drivers under Windows.

## Pre-compiled binaries
A release package (zip) should be available. This package is automatically downloaded when using the `get_started_mingw64.sh` script in Silice repo. If you only intend to *use* this package, nothing else is required.

## How to rebuild
- Install MSYS2 from https://www.msys2.org/ (make sure to follow the instructions on the page to update to latest)

*Note:* MSYS2 installs three different environments (in a single, self contained directory): MSYS, MinGW32 and MinGW64. These scripts are meant for MinGW**64** only.

- Launch a MinGW64 shell (Start => type 'MinGW', you should see the shell proposed).
- Clone this repo.
- Enter the mingw64 directory.
- Type ./compile_all.sh
- Wait... 
- done! Everything is in subdirectories specially created under the mingw64 directory. 
- Type package.sh to obtain a nice zip, ready to be uploaded as a release.

**Important:** Beware that the scripts will automatically install required packages (with pacman) without prompting.

*Note:* global environment variables such as your PATH or Boost_DIR can interfere with the build. If you get errors, this is the first thing to check.

## Notes and tips 

### USB and IceStick under Windows
To program an IceStick with *iceprog* or *openFPGAloader* under Windows, you may have to use the [Zadig USB tool](https://zadig.akeo.ie/) to swap the driver. To do this, connect the IceStick, launch Zadig, select the IceStick from the drop-down menu (interface 0), and change the driver for 'WinUSB' (select it on the right side). Click replace, wait, disconnect the board, put it back, should be working now. I've done this several times without issues. If it still does not work, verify the USB port is not a hub (some USB ports on computer fronts are) and try again from a native USB port on your motherboard.

## See also
- MSYS2/MinGW package scripts for FPGA tools - https://github.com/DiodeRed/MinGW-FPGA-Packages
- Multi-platform nightly builds of many FPGA tools https://github.com/open-tool-forge/fpga-toolchain

