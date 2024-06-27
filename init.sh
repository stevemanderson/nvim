#!/bin/bash
rm package.tar
mkdir bin
wget https://github.com/microsoft/vscode-js-debug/releases/download/v1.91.0/js-debug-dap-v1.91.0.tar.gz -O package.tar
tar -xvf package.tar
mv js-debug bin/
rm package.tar
