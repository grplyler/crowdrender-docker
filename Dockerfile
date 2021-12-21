FROM nvidia/cuda:11.4.1-runtime-ubuntu20.04

WORKDIR /app
# ADD ./blender /app/blender
ADD  ./scripts /app/scripts
RUN ln -s /app/blender/blender /usr/local/bin/blender
RUN mkdir blender

RUN apt update
RUN apt install -y xz-utils libx11-6 libxi6 libxxf86vm1 libxfixes3 libxrender1 libgl1
RUN apt install -v nvidia-toolkit
CMD nvidia-smi 
