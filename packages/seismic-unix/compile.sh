#!/bin/bash

JOBS=8
export CWPROOT=$(pwd)
cd src
make install -j $JOBS
make xtinstall -j $JOBS
make xminstall -j $JOBS
