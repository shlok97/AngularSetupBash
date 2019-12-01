sudo apt-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
command -v nvm

#Restart Node

nvm install node
node --version
npm -v

# YARN

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

# Python

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
sudo apt install python3-pip

# Install Jupyter

sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir ~/my_project_dir
cd ~/my_project_dir
virtualenv my_project_env
source my_project_env/bin/activate
pip install jupyter
jupyter notebook

# Install Forever
npm install -g forever
forever --version

# Install CUDA
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda

# Set ENV Vars
#As per Section 7.1.1 of the CUDA Installation Guide for Linux, append the following lines to ~/.bashrc:
# CUDA related exports
#export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
