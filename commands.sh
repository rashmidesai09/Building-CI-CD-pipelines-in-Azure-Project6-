#!/usr/bin/env bash
# Run script only in home directory

#Get SSH keys
ssh-keygen -t rsa

#setup Python 3.7
wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.9.2-Linux-x86_64.sh 
sh Miniconda3-py37_4.9.2-Linux-x86_64.sh 
export PATH=~/miniconda3/bin:$PATH

#cloning github repo
git clone git@github.com:rashmidesai09/Project6.git

#Create a web app service
az webapp up --name mywebapp10021990 --resource-group azuredevops --runtime "PYTHON:3.7"

#Perform Prediction
-X POST https://mywebapp10021990.azurewebsites.net:$PORT/predict

#Azure pipeline agent
ssh devopsagent@137.135.108.199
https://vstsagentpackage.azureedge.net/agent/2.210.1/vsts-agent-linux-x64-2.210.1.tar.gz
mkdir myagent && cd myagent
tar zxvf ../vsts-agent-linux-x64-2.210.1.tar.gz
./config.sh

#intall docker
udo snap install docker
# Check Python version because this agent will build your code
python3 --version

#Configure the devopsagent user to run Docker as:
sudo groupadd docker
sudo usermod -aG docker $USER
exit

#setting up URL
https://dev.azure.com/odl_user_208958

#Run the following commands to finish the set up
sudo ./svc.sh install
sudo ./svc.sh start

sudo apt-get update
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
sudo apt-get install python3.7-venv
sudo apt-get install python3-pip
python3.7 --version
pip --version 
sudo apt-get install python3.7-distutils
sudo apt-get -y install zip

pip install pylint==2.15.2
pip show --files pylint
# Shows Files:
#  ../../../bin/epylint
# ../../../bin/pylint
echo $PATH
# Update the Path for Pylint
export PATH=$HOME/.local/bin:$PATH
echo $PATH

