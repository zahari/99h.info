sudo apt-get -y remove mysql-server mysql-server-5.5 lighttpd php5-cgi php5-mysql
sudo apt-get -y autoremove
sudo apt-get autoclean
sudo apt-get -y install lighttpd php5-cgi php5-mysql
sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd force-reload
echo "mysql-server-5.5 mysql-server/root_password password T00R" | sudo debconf-set-selections
echo "mysql-server-5.5 mysql-server/root_password_again password T00R" | sudo debconf-set-selections
sudo apt-get -y install mysql-server-5.5
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

