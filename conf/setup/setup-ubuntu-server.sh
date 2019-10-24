#!/usr/bin/env bash
user=oma
sudo apt-get update && apt-get upgrade -y

sudo locale-gen nb_NO.UTF-8
sudo update-locale LANG=nb_NO.UTF-8 LC_MESSAGES=en_US.UTF-8

adduser --gecos "" $user
gpasswd -a $user sudo
sudo -u $user mkdir -p /home/$user/.ssh
sudo -u $user touch /home/$user/.ssh/authorized_keys
cat /root/.ssh/authorized_keys >> /home/$user/.ssh/authorized_keys
sudo -u $user chmod 700 /home/$user/.ssh
sudo -u $user chmod 600 /home/$user/.ssh/authorized_keys

sed -i 's/^PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
# Newer ubuntu releases sets prohibit-password as default
sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/^#AllowTcpForwarding yes/AllowTcpForwarding yes/g' /etc/ssh/sshd_config
service ssh restart

sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw show added
sudo ufw --force enable
sudo ufw status
