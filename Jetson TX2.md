## Make sure the following dependencies are installed on the TX2 device:

    sudo -H apt install python3-pip python3-dev python3
    sudo -H apt-get install -y libhdf5-dev
    sudo -H pip3 install numpy wheel setuptools mock 'future>=0.17.1'
    sudo -H easy_install --user cython
    sudo -H apt-get install -y libblas-dev liblapack-dev libatlas-base-dev gfortran
    sudo -H pip3 install scipy pandas h5py matplotlib

## Install final dependencies and the pre-built Tensorflow 2.0 wheel file: 

Tensorflow took 3 days to compile from source code on the TX2 device! 
Download our pre-built version of Tensorflow 2.0: [tensorflow-2.0.0-cp36-cp36m-linux_aarch64-jetson-tx2.whl](https://bit.ly/31OU2pO)

    sudo -H pip3 install  keras_applications==1.0.6 --no-deps
    sudo -H pip3 install keras_preprocessing==1.0.5 --no-deps
    sudo -H pip3 install tensorflow-2.0.0-cp36-cp36m-linux_aarch64-jetson-tx2.whl

## Install OpenAI Gym Environments:
    sudo -H pip3 install gym

## Install the Huskarl reinforcement learning framework ontop of OpenAI Gym and Tensorflow 2.0:

    git clone https://github.com/danaugrs/huskarl.git
    cd huskarl
    sudo -H pip3 install -e .
    
## Test scripts:

 - Script to test whether OpenCV is installed and working properly:

   [opencv.py](./nvidia%20jetson%20TX2/opencv.py)
   
 - Script to test whether Huskarl is installed and working properly:

   [cartpole.py](./nvidia%20jetson%20TX2/cartpole.py)
