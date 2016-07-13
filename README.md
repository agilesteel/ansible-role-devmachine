# ansible-role-devmachine

## provision (install software and then configure the devmachine, which is recommended)

```bash
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/bootstrap-provision.sh
sudo chmod +x bootstrap-provision.sh
./bootstrap-provision.sh
```

## install (without configuration)

```bash
wget -q https://raw.githubusercontent.com/agilesteel/ansible-role-devmachine/master/bootstrap-install.sh
sudo chmod +x bootstrap-install.sh
./bootstrap-install.sh
