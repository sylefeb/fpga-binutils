#!/bin/bash

# symbiyosys

DIR=$(pwd)

mkdir BUILDS
cd BUILDS

git clone https://github.com/YosysHQ/SymbiYosys.git

cd SymbiYosys

cp sbysrc/*.py ../../bin/

cd ..
cd ..
