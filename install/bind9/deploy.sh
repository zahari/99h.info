#!/bin/bash
#
# Bind configuration
#

PACKAGES="bind9 bind9utils bind9-doc"
sudo apt-get -y remove $PACKAGES
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y install $PACKAGES

sudo echo 'OPTIONS="-4 -u bind"' > /etc/default/bind9
sudo cp named.conf.options /etc/bind/named.conf.options
sudo echo "nameserver 127.0.0.1" > /etc/resolv.conf
sudo service bind9 restart
sudo cp db.99h.info /etc/bind/db.99h.info
sudo cp db.151 /etc/bind/db.151
sudo cp named.conf.local /etc/bind/named.conf.local

sudo service bind9 restart

