#!/bin/bash

source ~/.bashrc
source /opt/ros/galactic/setup.bash
source /usr/share/gazebo/setup.sh
source $WORKSPACE/install/setup.bash
cd $WORKSPACE
ros2 launch dolly_gazebo dolly.launch.py world:=dolly_city.world