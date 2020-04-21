#!/bin/bash
xhost +local:root


docker run -it --name interactive_slam \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    --gpus all \
    tiger0421/docker-interactive_slam:melodic \
    /bin/bash

xhost -local:root
