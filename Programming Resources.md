[Go Back to Index Page](./README.md)

# Programming Resources

This page contains a curated list of software, programming languages, and libraries needed to do ML projects. There are many frameworks for ML to choose between, in our group we have adopted [Tensorflow](https://www.tensorflow.org/install) and [Python](https://www.python.org/) as our main framework and language.

We use Interactive Python Notebooks (`.ipynb` files) in the form of [Jupyter Notebooks](https://jupyter.org/) for our work. 

- [Python](#python)
  - [PIP - Python Package Manager](#pip-python-package-manager)
- [CUDA and CUDNN](#cuda-and-cudnn)
- [Tensorflow 2.0](#tensorflow)
- Jupyter Lab
- Numpy
- Matplotlib
- Scikit
- h5py
- Pandas

## Python

Please just install the latest version of Python 3.x from Python.org.

- Windows

  - Download from: https://www.python.org/ 
  - Current version: 3.7.x

- Linux 

  - Install through OS package-manager. 

    - Run `sudo apt-get install python3` or equivalent command for your OS and package manager.

  - Might already be installed, check!

    - Run `python --version` or `python3 --version` on the command line as needed.

  - Ubuntu 18.04 LTS comes with Python 3.x as the default!

    

### PIP - The Python Package Manager

Python from Python.org comes with a package manager called PIP, used for installing and upgrading Python libraries and packages. PIP is run from the command line and is very simple to use.

- To see all currently installed packages

  ```bash
  pip list
  ```

- To install a new package by name (the package will be downloaded from PIP and then installed)

  ```bash
  pip install numpy matplotlib
  ```

  - This will install the packages **numpy** and **matplotlib**.

- To update a package that is already installed

  ```bash
  pip install --upgrade numpy
  ```

  - This will update the currently installed **numpy** to the latest version available.

- To uninstall a package

  ```bash
  pip uninstall numpy
  ```

  - This will remove the **numpy** package from the system.



### DO NOT INSTALL ANADCONDA PYTHON

- I cannot stress this enough, do **not** do it! If you do, you will be told to undo it. 
- Anaconda over the years has caused us nothing but grief and frustration.
  - It uses different and contradicting version numbers.
  - It distributes its own package manager and its own version of common packages, again with confusing and contradicting version numbers. 
  - It lags behind the version of the packages available for regular python. 
  - It contains many packages that are "up-to-date" but are completely incompatible with one another at run-time.
  - It markets itself as "Python for Scientists" when all a scientist wants is something that works! Not something branded for scientists... 
  - End rant, don't use it. 



## CUDA and CUDNN

If you have an NVidia GPU then you should install the CUDA driver to allow your GPU to be used to accelerate your machine learning algorithms. This GPU acceleration happens transparently with no changes to your Python code!

- Update your NVidia GPU Display Driver to a version at least **410.x**. 
  - Latest is best!
- Install CUDA **10.0** 
  - Stood for "Compute Unified Device Architecture"
    - Although NVidia now claim the acronym stands for nothing...
  - **10.0** is the **exact and only** version [accepted by the latest version of Tensorflow 2.x library](https://www.tensorflow.org/install/gpu).
    - Do not install any other version. 
    - Do not install multiple different versions of CUDA at the same time.
- Install CUDNN **7.4.1 (or later)**
  - Stands for "CUDA Deep Neural Network Library"
  - Requires you to sign into the NVidia Developer Network on their website to download it.
    - Signup is free. I used my Google account to authenticate. 
  - Make sure you download a version "**For CUDA 10.0**".

## Tensorflow 



- Install Tensorflow 2.0 from `pip` the Python Package Manager.

  - If you do **not** have an NVidia GPU.

    ```bash
    pip install tensorflow==2.0.0-alpha0 
    ```

  - If you have an NVidia GPU and have followed the previous step to install CUDA 10.0 and CUDNN 7.4.1.

    ```bash
    pip install tensorflow-gpu==2.0.0-alpha0
    ```

  - You may need to use `pip3` instead of `pip` if you have both Python 2.x and Python 3.x installed on your system. 