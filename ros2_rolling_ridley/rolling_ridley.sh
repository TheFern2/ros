#!/bin/bash

sudo apt install curl gnupg lsb-release -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo aptitude install ros-rolling-desktop
sudo apt install python3-colcon-common-extensions
# echo "source /opt/ros/rolling/setup.bash" >> ~/.bashrc
# source ~/.bashrc

# or add to fish
# bass source /opt/ros/rolling/setup.bash