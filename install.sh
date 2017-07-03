#!/bin/bash
# NVIDIA Jetson TX1
# python 2.7
# Tensorflow 1.2.0

./createSwap.sh
./setLocalLib.sh
./installPrerequisites.sh
./cloneTensorFlow.sh
./setTensorFlowEV.sh
./buildTensorFlow.sh
./packageTensorFlow.sh

sudo pip install --upgrade $HOME/tensorflow-1.2.0-cp27-cp27mu-linux_aarch64.whl
