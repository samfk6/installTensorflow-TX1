#!/bin/bash
# NVIDIA Jetson TX1
# TensorFlow Installation
# Build TensorFlow 1.2.0

cd $HOME/tensorflow
# TensorFlow couldn't find include file for some reason
# TensorFlow expects it in /usr/lib/aarch64-linux-gnu/include/cudnn.h
sudo mkdir /usr/lib/aarch64-linux-gnu/include/
sudo cp /usr/include/cudnn.h /usr/lib/aarch64-linux-gnu/include/cudnn.h
# Setup the environment variables for configuration
# PYTHON Path is the default
default_python_bin_path=$(which python)
PYTHON_BIN_PATH=$default_python_bin_path
# PYTHON LIB Path
PYTHON_LIB_PATH=/usr/lib/python2.7/dist-packages
# No Google Cloud Platform support
TF_NEED_GCP=0
# No Hadoop file system support
TF_NEED_HDFS=0
# Use CUDA
TF_NEED_CUDA=1
# Setup gcc ; just use the default
default_gcc_host_compiler_path=$(which gcc)
GCC_HOST_COMPILER_PATH=$default_gcc_host_compiler_path
# TF CUDA Version 
TF_CUDA_VERSION=8.0
# CUDA path
default_cuda_path=/usr/local/cuda
CUDA_TOOLKIT_PATH=$default_cuda_path
# cuDNN
TF_CUDNN_VERSION=5.1.5
default_cudnn_path=/usr/lib/aarch64-linux-gnu
CUDNN_INSTALL_PATH=$default_cudnn_path
# CUDA compute capability
TF_CUDA_COMPUTE_CAPABILITIES=5.3
CC_OPT_FLAGS=-march=native
TF_NEED_JEMALLOC=1
TF_NEED_OPENCL=0
TF_ENABLE_XLA=0

TF_NEED_MKL=0
TF_NEED_VERBS=0
TF_CUDA_CLANG=0

source ./configure
