#!/bin/sh

# install
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/bootstrap-install.sh
sudo chmod +x bootstrap-install.sh
./bootstrap-install.sh

# configure
wget -q  https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/configure.yml
sudo rm -r ~/.ansible # https://github.com/austinhyde/ansible-sshjail/pull/13
ansible-playbook configure.yml # no sudo
rm configure.yml

# clean
rm bootstrap-provision.sh
