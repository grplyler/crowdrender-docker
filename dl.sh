#!/bin/bash

BTAR=blender-3.0.0-linux-x64.tar.xz
if [ -f "$BTAR" ]; then
    echo "$BTAR already download exists."
    exit
fi

wget https://mirror.clarkson.edu/blender/release/Blender3.0/blender-3.0.0-linux-x64.tar.xz
tar xvf blender-3.0.0-linux-x64.tar.xz
mv blender-3.0.0-linux-x64 blender
cd blender
ln -s `pwd`/blender /usr/local/bin/blender
cd ..
echo "blender 3.0.0 installed"
