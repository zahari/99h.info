sudo aptitude install lighttpd php5-cgi php5-mysql
sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php
sudo service lighttpd force-reload
sudo aptitude install mysql-server
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
