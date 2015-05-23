#!/bin/bash

if [ "X" == "X$1" ]; then
    echo "No args!"
    exit -1
fi

DOMAIN=$1.99h.info
BASE=/var/www/vhosts
LOG=/var/log/lighttpd

mkdir -p $BASE/$DOMAIN/http
echo "<p>Your website is working!</p>" > $BASE/$DOMAIN/http/index.html
chown www-data:ftp -R $BASE/$DOMAIN/http
mkdir -p $LOG/$DOMAIN
touch $LOG/$DOMAIN/access.log
touch $LOG/$DOMAIN/error.log
chown www-data:ftp -R $LOG/$DOMAIN

mkdir -p /etc/lighttpd/vhosts.d/
cat > /etc/lighttpd/vhosts.d/$DOMAIN.conf <<EOL
\$HTTP["host"] == "$DOMAIN" {
    server.document-root = "$BASE/$DOMAIN/http"
    server.errorlog = "$LOG/$DOMAIN/error.log"
    accesslog.filename = "$LOG/$DOMAIN/access.log"
    server.error-handler-404 = "/e404.php"
}
EOL
#sudo service lighttpd restart

exit 0
