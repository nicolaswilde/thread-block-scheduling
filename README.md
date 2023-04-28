# Reproducibility Submission of pap223 & apdx190

## Experiment Workflow

### 1 Prepare Hardware & Software Environments

You need computers or servers with Ubuntu 20.04, CUDA 11.3, Nsight System, and V100/RTX2080Ti/A100/RTX3090 GPUs.

If local GPUs are not available, you can rent GPU servers used in this work:

- login to https://en.gpushare.com/, navigate to `console` -> `Instance and Data` -> `My instance` -> `Create instance`
- select the GPU you want
- select `Instance image` -> `Official image` -> `PyTorch 1.12.0` -> `Python 3.8` -> `Cuda 11.3`
- then you can access the GPU server through ssh.

CUDA 11.3 is already install on the GPU servers, but you still need to install nsight system:

- download the nsight system installation package from https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/2023_2/nsightsystems-linux-cli-public-2023.2.1.122-3259852.deb/ to your local computer
- if the above link is not valid (version updated), you can click `download` on https://developer.nvidia.com/nsight-systems/get-started to download the installation package (Linux CLI only .deb Installer) to your local computer
- upload the nsight system installation package through scp to the GPU servers
- install the dependent library: `sudo apt-get install libglib2.0-0:amd64`
- install nsight system: `sudo dpkg -i NsightSystems-linux-cli-public-{installation-package-version-number}.deb`

### 2 Execute the code

- get the code from https://github.com/nicolaswilde/thread-block-scheduling
- upload the code to the GPU servers
- execute:
    - `make GPGPU=V100` on V100
    - `make GPGPU=RTX2080TI` on RTX2080Ti
    - `make GPGPU=A100` on A100
    - `make GPGPU=RTX3090` on RTX3090

### 3 Check the Experiment Results

After execution, some information are printed in the terminal. You will find the profiling files in the directory `result`. You can download the profiling files to your local computer (if you are using GPU servers) and open the profiling files with a host version (with GUI) of nsight system.

Following the workflow above, the authors provides the experiment results on V100, RTX2080Ti, A100, and RTX3090 at https://github.com/nicolaswilde/thread-block-scheduling/tree/main/my-result. You can check the log files and the nsys-rep files.
