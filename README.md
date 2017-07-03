# installTensorFlowTX1
July 3, 2017
Install TensorFlow v1.2.0 on NVIDIA Jetson TX1 Development Kit

Jetson TX1 is flashed with JetPack 3.0 which installs:
* JetPack L4T 3.0 an Ubuntu 16.04 64-bit variant (aarch64)
* CUDA 8.0
* cuDNN 5.1.5

### Installation

Note: This procedure was derived from these discussion threads: 

<ul>
<li>https://github.com/tensorflow/tensorflow/issues/851</li>
<li>http://stackoverflow.com/questions/39783919/tensorflow-on-nvidia-tx1/</li>
<li>https://devtalk.nvidia.com/default/topic/1000717/tensorflow-on-jetson-tx2/</li>
<li>http://jany.st/post/2017-05-20-tensorflow-on-nvidia-jetson-tx1.html</li>
</ul>


TensorFlow should be built in the following order:

#### install.sh

Auto run all script and install tensorflow 1.2.0. Uses python 2.7.

#### createSwap.sh

Before installing TensorFlow, a swap file should be created (minimum of 8GB recommended). Use extra storage(SSD) to boot and buid tensorflow (least 25 GB)

#### installPrerequisites.sh
Installs Java and other dependencies needed. Also builds:

##### Bazel
Builds version 0.4.5. Includes patches for compiling under aarch64. 

#### cloneTensorFlow.sh
Git clones v1.2.0 from the TensorFlow repository and patches the source code for aarch64

#### setTensorFlowEV.sh
Sets up the TensorFlow environment variables. This script will ask for the default python library path. There are many settings to chose from, the script picks the usual suspects. Uses python 2.7.

#### buildTensorFlow.sh
Builds TensorFlow.

#### packageTensorFlow.sh
Once TensorFlow has finished building, this script may be used to create a 'wheel' file, a package for installing with Python. The wheel file will be in the $HOME directory.

#### Install wheel file
$ pip install $HOME/<em>wheel file</em>


#### Thanks
<ul>
<li>https://github.com/jetsonhacks</li>
<li>https://github.com/ljanyst</li>
</ul>

