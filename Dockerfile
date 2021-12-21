FROM nvidia/cuda:11.4.1-runtime-ubuntu20.04

WORKDIR /app
ADD ./blender /app
CMD nvidia-smi 
