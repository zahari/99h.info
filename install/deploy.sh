sudo apt-get remove lighttpd php5-cgi php5-mysql
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get install lighttpd php5-cgi php5-mysql debconf-utils
sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd force-reload
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password t00r'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password t00r'
sudo apt-get -y install mysql-server
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
