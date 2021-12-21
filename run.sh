#!/bin/bash

docker run \
--gpus all \
-v `pwd`/data:/app/data \
-v `pwd`/blender:/app/blender \
-v `pwd`/scripts:/app/scripts \
-it crowdrender:gpu bash