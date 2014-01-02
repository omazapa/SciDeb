#!/bin/bash
#Madagascar - Opciones de compilacion
./configure API=c,c++,f90,octave,python --prefix=/opt/madagascar  NVCC=/usr/bin/nvc  CUDA_TOOLKIT_PATH=/usr/ OCTAVE=/usr/bin/octave EPYDOC=True  --jobs 8
