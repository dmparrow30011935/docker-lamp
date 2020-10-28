FROM arrowdock6/php:1
EXPOSE 80
EXPOSE 443

COPY ./www/composer.lock  /var/www/html/
COPY ./www/composer.json  /var/www/html/
WORKDIR /var/www/html
Run composer install







