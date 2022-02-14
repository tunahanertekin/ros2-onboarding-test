#!/bin/bash

# get dependencies
cd $WORKSPACE
rosdep install --from-paths src --ignore-src -r -y

# build workspace
cd $WORKSPACE
colcon build