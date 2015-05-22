sudo apt-get -y remove mysql-server mysql-server-5.5 lighttpd php5-cgi php5-mysql
sudo apt-get -y remove bind9 bind9utils bind9-doc
sudo apt-get -y autoremove
sudo apt-get autoclean
sudo apt-get -y install lighttpd php5-cgi php5-mysql
#
# Bind configuration
#
sudo apt-get -y install bind9 bind9utils bind9-doc
sudo echo 'OPTIONS="-4 -u bind"' > /etc/default/bind9
sudo cp named.conf.options /etc/bind/named.conf.options
sudo echo "nameserver 127.0.0.1" > /etc/resolv.conf
sudo service bind9 restart
sudo cp db.99h.info /etc/bind/db.99h.info
sudo cp db.151 /etc/bind/db.151
sudo cp named.conf.local /etc/bind/named.conf.local
sudo service bind9 restart

sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd force-reload
echo "mysql-server-5.5 mysql-server/root_password password T00R" | sudo debconf-set-selections
echo "mysql-server-5.5 mysql-server/root_password_again password T00R" | sudo debconf-set-selections
sudo apt-get -y install mysql-server-5.5
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
