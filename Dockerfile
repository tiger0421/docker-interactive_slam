FROM tiger0421/ros-gpu-gazebo:1.0-glvnd-runtime-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y \
        libglm-dev \
        libglfw3-dev \
        ros-melodic-geodesy \
        ros-melodic-pcl-ros \
        ros-melodic-nmea-msgs \
        ros-melodic-libg2o \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN curl https://raw.githubusercontent.com/tiger0421/docker-interactive_slam/master/install_interactive_slam.sh > install_interactive_slam.sh && chmod a+x install_interactive_slam.sh

