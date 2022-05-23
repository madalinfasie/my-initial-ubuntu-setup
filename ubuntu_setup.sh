#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
    build-essential \
    libssl-dev libffi-dev python3-dev \
    git \
    python3-venv \
    idle3 \
    curl \
    openssh-client \
    direnv \
    simple-scan
    
sudo ubuntu-drivers autoinstall
sudo apt -y autoremove

sudo snap install --classic code

# Setup Python environment
mkdir ~/.envs
echo "alias python='python3'" >> ~/.bashrc
cd ~/.envs && python3 -m venv general
source ~/.envs/general/bin/activate
pip install flask
pip install pytest pytest-mock pytest-watch

