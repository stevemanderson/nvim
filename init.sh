#!/bin/bash

if [ ! -d "./bin" ]; then
  echo "DAP is being retrieved."
  if [ -f "package.tar" ]; then
    rm package.tar
  fi
  mkdir bin
  wget --quiet https://github.com/microsoft/vscode-js-debug/releases/download/v1.91.0/js-debug-dap-v1.91.0.tar.gz -O package.tar
  tar -xvf package.tar
  mv js-debug bin/
  rm package.tar
fi

# LANGUAGE SERVERS
echo "Installing bash language server"
npm i -g bash-language-server
