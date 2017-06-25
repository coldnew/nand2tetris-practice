#!/usr/bin/env bash

wget http://www.nand2tetris.org/software/nand2tetris.zip

if [ -f nand2tetris.zip ]; then
    unzip nand2tetris.zip
    cp -rf nand2tetris/* .
    chmod +x -R tools
    rm -rf  nand2tetris
    rm nand2tetris.zip
else
    echo "ERROR: nand2tetris directory not found or download nand2tetris.zip error."
fi
