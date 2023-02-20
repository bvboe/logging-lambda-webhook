#!/bin/bash

cd `dirname "$0"`
mkdir -p build
cd build
rm -rf src
cp -r ../src .

cd src
zip -r ../deployment-package.zip .
