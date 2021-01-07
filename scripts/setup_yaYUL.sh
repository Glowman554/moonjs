#!/bin/bash

echo Downloading yaYUL
git clone https://github.com/LittelAGC/yaYUL.git
cd yaYUL
echo Setting up yaYUL
cmake .
echo Compiling yaYUL
cmake --build .
cd ..