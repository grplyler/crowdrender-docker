FROM ubuntu:20.04 as base

ENV CR_VERSION cr_031_bl280

WORKDIR /CR
COPY blender-3.0.0-linux-x64.tar.xz .
COPY cr_031_bl280.zip .
COPY start_cr_server.sh .
COPY install_blender.sh .
COPY install_addon.sh .
COPY install_addon.py .
COPY activate_gpu.py .


RUN chmod +x ./*.sh
RUN chmod -R 777 /CR


# Install Blender
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:graphics-drivers
RUN apt install nvidia-driver-470 -y
RUN apt install -y nvidia-cuda-toolkit
RUN ./install_blender.sh

# Install Crowdrender addon and activate GPU
RUN ./install_addon.sh
RUN blender -b -noaudio -P activate_gpu.py

ENTRYPOINT bash
