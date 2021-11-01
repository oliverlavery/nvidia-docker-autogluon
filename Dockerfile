from tensorflow/tensorflow:latest-gpu-jupyter
# NOTE: This Dockerfile is corresponds to Nvidia 470 drivers.
# cuda-toolkit-11-3 and libnvidia-compute-470 must match host Nvidia drivers
RUN apt update && apt install -y cuda-toolkit-11-3 libnccl2 libnccl-dev cmake libboost-all-dev cmake libnvidia-compute-470 nvidia-opencl-dev
RUN pip install scikit-learn pandas matplotlib numpy
# mxnet_cu112 must match host Nvidia drivers
RUN pip install -qU "mxnet_cu112 < 2.0.0"  
RUN pip install -qU autogluon
RUN pip uninstall tensorflow-cpu
RUN pip install tensorflow-gpu
RUN pip uninstall lightgbm -y && pip install lightgbm --install-option=--gpu

