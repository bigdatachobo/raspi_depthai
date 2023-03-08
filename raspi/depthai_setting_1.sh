# setting
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get wget

# miniforge
wget https://github.com/conda-forge/miniforge/releases/download/4.11.0-0/Miniforge-pypy3-4.11.0-0-Linux-aarch64.sh
sudo sh Miniforge-pypy3-4.11.0-0-Linux-aarch64.sh

# python 3.8
conda create -n depai python=3.8 -y
conda activate depai

# depth ai
sudo curl -fL https://docs.luxonis.com/install_dependencies.sh | bash
python3 -m pip install depthai
git clone https://github.com/luxonis/depthai-python.git
cd depthai-python
cd examples
sudo python3 install_requirements.py
cd
sudo pip3 install opencv-python==4.5.1.48
sudo pip3 install -U numpy
sudo python3 -m pip install depthai --user
cd depthai-python/examples