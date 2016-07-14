#!/bin/sh

# install ansible
sudo apt-get install -yqq software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -yqq ansible

# install 
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/install.yml
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/mongodb.service
sudo ansible-playbook install.yml
rm mongodb.service
rm install.yml

# clean
rm bootstrap-install.sh
