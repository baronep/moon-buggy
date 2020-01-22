# moon-buggy

## Setup
You really just need docker, go to https://docs.docker.com/install/linux/docker-ce/ubuntu/

## How to Build
```
# Clone the repo - you can figure it out

# Launches the dev container if its not already running and then attaches a shell.
# Can be run more than once for more than one shell
./tools/bin/launch_dev_container.sh

# Once in the container - source this
source /opt/ros/melodic/setup.bash

# The repo is already mounted to /code. Just start the build
catkin_make
```
