#!/bin/bash

chmod 755 /var/www/
chmod 755 /var/www/html 

echo "Set server name"
echo "ServerName localhost" | tee -a /etc/apache2/apache2.conf

echo "Setting up PHP"
cd /usr/local/etc/php/modules && docker-php-ext-install pdo_mysql

echo "Enable MOD"
a2enmod rewrite
service apache2 reload

echo "Script is finished!"
#exec "apache2-foreground"
