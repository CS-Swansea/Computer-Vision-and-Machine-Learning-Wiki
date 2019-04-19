[Go Back to Index Page](./README.md)

# Programming Resources

This page contains a curated list of software, programming languages, and libraries needed to do ML projects. There are many frameworks for ML to choose between, in our group we have adopted [Tensorflow](https://www.tensorflow.org/install) and [Python](https://www.python.org/) as our main framework and language.

We use Interactive Python Notebooks (`.ipynb` files) in the form of [Jupyter Notebooks](https://jupyter.org/) for our work. 

- [Python](#python)
  - [PIP - Python Package Manager](#pip---the-python-package-manager)
  - [Recommened Packages](#)
- [CUDA and CUDNN](#cuda-and-cudnn)
- [Tensorflow 2.0](#tensorflow)

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

    

### Please install the following packages to get started

| Package         | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| numpy           | A CPU-side mathematics framework. **It is vital you know how to write efficient Numpy code.** |
| matplotlib      | A graph plotting and visualization library. Use this for creating plots and figures for your papers, and also for visually debugging the results of your models and code. |
| jupyter-lab     | An IDE which runs locally on the command line but launches in the webbrowser for its GUI. Perfect for the type of development and prototyping we need to do for ML research. |
| pandas          | A library for parsing and processing tabular data such as `.csv` files. |
| h5py            | A python wrapper library around the HDFS (Highly Distributed File System) protocol. Use this to save and load large amounts of data efficiently from disk. |
| scikit-learn    | A python framework with many different machine learning algorithms implemented efficiently for CPU execution. |
| scikit-image    | A python framework with many image processing algorithms and functions implemented efficiently for CPU execution. |
| scikit-optimize | A python framework with many different optimization algorithms implemented efficiently for CPU execution. |

### DO NOT INSTALL ANADCONDA PYTHON

- I cannot stress this enough, do **not** do it! If you do, you will be told to undo it. 
- Anaconda over the years has caused us nothing but grief and frustration.
  - It uses different and contradicting version numbers.
  - It distributes its own package manager and its own version of common packages, again with confusing and contradicting version numbers. 
  - It lags behind the version of the packages available for regular python. 
  - It contains many packages that are "up-to-date" but are completely incompatible with one another at run-time.
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

Tensorflow is a mathematics framework developed by Google designed for machine learning. In ML we often need to compute the derivative of a function with respect to its output, for a given input. We use this in many places but most commonly we use derivatives to compute how much to modify each of our model's weights by in order to make the model slightly better at its given task. By updating the weights by small amount many thousands of times we march the set of weights towards an optimum configuration. 

That is, we learn what the true value of the weights should be through optimization against an objective function. 

Tensorflow is designed to be hardware agnostic, which means that regardless of whether you are on a laptop or a desktop or a server, or whether you have GPUs or just a CPU, your Tensorflow code written in Python looks the same. If the same code is run on a different machine with different hardware it will naturally make use of the different hardware to accelerate the computation. **GPU support requires CUDA to be installed!**

First introduced in 2015, Tensorflow has now hit version 2.0 which brings with it many changes that fundamentally break older code. **Tensorflow 1.x and 2.x are essentially completely different frameworks**. 

Code and tutorials that you find online for older versions of Tensorflow will look different, behave differently, and in many cases will not be valid code in 2.x. Do not be surprised by this, just pay attention to what you are looking at. The message and knowledge that was being conveyed is likely similar and still relevant, even if the code is not directly applicable. 



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