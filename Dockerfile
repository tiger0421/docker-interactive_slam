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
        vim \
        tmux \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

COPY docker-entrypoint.sh /tmp
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
CMD ["/bin/bash"]
