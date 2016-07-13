#!/bin/sh

# download main.yml
wget -q -O main.yml https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/provision.yml
wget -q -O mongodb.service https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/mongodb.service

# install ansible
sudo apt-get install -yqq software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -yqq ansible

# setup devmachine
sudo ansible-playbook provision.yml

# cleanup
rm mongodb.service
rm provision.yml
rm bootstrap-provision.sh
