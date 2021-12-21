#!/bin/bash

BTAR=blender-3.0.0-linux-x64.tar.xz
CRZIP=cr_031_bl280.zip
CRDL=https://discovery.crowd-render.com/api/v0/download-addon/$CRZIP

# Check for blender
if [ -f "$BTAR" ]; then
    echo "$BTAR already downloaded."
else
    # Download Blender
    wget https://mirror.clarkson.edu/blender/release/Blender3.0/blender-3.0.0-linux-x64.tar.xz
    tar xvf blender-3.0.0-linux-x64.tar.xz
    mv blender-3.0.0-linux-x64 blender
    cd blender
    ln -s `pwd`/blender /usr/local/bin/blender
    cd ..
    echo "blender 3.0.0 installed"
fi

# Check for crowdrender
if [ -f "$CRZIP" ]; then
    echo "$CRZIP already downloaded."
else
    echo "downloading crowdrender..."
    wget $CRDL
fi
