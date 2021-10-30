#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full -y
# echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
# source ~/.bashrc
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo rosdep init
rosdep update
sudo apt install ros-noetic-ros-tutorials -y
sudo apt install ros-noetic-rqt ros-noetic-rqt-common-plugins ros-noetic-turtlesim -y

# ensure you have fisher, and bass
# add entries to your config.fish
# bass source /opt/ros/noetic/setup.bash
# bass source ~/catkin_ws/devel/setup.bash