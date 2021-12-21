#!/bin/bash

docker run \
--gpus all \
-v `pwd`/data:/app/data \
-it crowdrender:gpu bash