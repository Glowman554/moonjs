#!/bin/bash

./scripts/setup_emsdk.sh
source emsdk/emsdk_env.sh
./scripts/setup_yaYUL.sh
./scripts/download_rom.sh test
make serve