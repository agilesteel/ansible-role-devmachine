#!/bin/sh

# download main.yml
wget -q -O main.yml https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/main.yml
wget -q -O mongodb.service https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/mongodb.service

# install ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# setup devmachine
sudo ansible-playbook main.yml

# cleanup
rm mongodb.service
rm main.yml
rm bootstrap-main.sh
