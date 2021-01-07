#!/bin/bash

base=https://github.com/LittelAGC/

echo Downloading $1
git clone $base$1
cd $1
echo Compiling $1
../yaYUL/yaYUL MAIN.agc > null
cp MAIN.agc.bin ../core.bin
cd ..
rm -rf $1