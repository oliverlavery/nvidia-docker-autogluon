#!/bin/sh
# Passing the devices explicitly works around cgroup2 issues: https://github.com/NVIDIA/nvidia-docker/issues/1447
nvidia-docker run --gpus all  --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-modeset:/dev/nvidia-modeset --device /dev/nvidia-uvm:/dev/nvidia-uvm --device /dev/nvidia-uvm-tools:/dev/nvidia-uvm-tools -it -v $(pwd):/tf/notebooks -p 8888:8888 ml-docker

