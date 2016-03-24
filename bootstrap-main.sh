#!/bin/sh

# install ansible
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

# download main.yml
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/main.yml

# setup devmachine
ansible-playbook -K main.yml
