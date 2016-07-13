#!/bin/sh

# install
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/bootstrap-install.sh
sudo chmod +x bootstrap-install.sh
./bootstrap-install.sh

# configure
wget -q  https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/configure.yml
ansible-playbook configure.yml # no sudo
rm configure.yml

# clean
rm bootstrap-provision.sh
