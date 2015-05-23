#!/bin/bash

PACKAGES="mysql-server-5.5 mysql-client lighttpd lighttpd-mod-mysql-vhost php5-cgi php5-mysql"

sudo apt-get -y remove $PACKAGES
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y install $PACKAGES

#
# Bind configuration
#
# sudo bash bind9/deploy.sh

sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd force-reload
echo "mysql-server mysql-server/root_password password P@SSW0RD" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password P@SSW0RD" | sudo debconf-set-selections
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
