FROM httpd:2.4


COPY ./public /usr/local/apache2/htdocs/
EXPOSE 80
EXPOSE 443
COPY ./hostfile/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./hostfile/httpd.conf /etc/apache2/conf/



WORKDIR /var/www/html



