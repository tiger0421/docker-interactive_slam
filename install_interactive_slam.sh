#!/bin/bash

# create workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin build

# clone interactive_slam
cd ~/catkin_ws/src
git clone https://github.com/koide3/ndt_omp
git clone https://github.com/koide3/hdl_graph_slam
git clone https://github.com/koide3/odometry_saver
git clone https://github.com/SMRT-AIST/interactive_slam --recursive
cd ~/catkin_ws
catkin build -DCMAKE_BUILD_TYPE=Release
