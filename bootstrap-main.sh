#!/bin/sh

# install ansible
sudo apt-get install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# download main.yml
wget -q -O main.yml https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/main.yml

# setup devmachine
ansible-playbook -K main.yml

# cleanup
rm main.yml
