#!/bin/bash

echo "installing blender 3.0.0"
pwd

tar xvf blender-3.0.0-linux-x64.tar.xz

cd blender-3.0.0-linux-x64
ln -s `pwd`/blender /usr/local/bin/blender