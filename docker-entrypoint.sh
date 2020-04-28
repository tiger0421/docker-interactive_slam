#!/bin/bash

source /opt/ros/melodic/setup.bash

cd /root
# create workspace
mkdir -p ~/catkin_ws/src
cd /root/catkin_ws/src
catkin_init_workspace
cd /root/catkin_ws
catkin build

# clone interactive_slam
cd /root/catkin_ws/src
git clone https://github.com/koide3/ndt_omp
git clone https://github.com/koide3/hdl_graph_slam
git clone https://github.com/koide3/odometry_saver
git clone https://github.com/SMRT-AIST/interactive_slam --recursive
cd /root/catkin_ws
catkin build -DCMAKE_BUILD_TYPE=Release

exec "$@"
