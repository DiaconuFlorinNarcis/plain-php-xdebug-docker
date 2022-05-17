FROM devilbox/php-fpm:8.2-work
#FROM php:8.1.4RC1-fpm-alpine3.15
#FROM 243922221670.dkr.ecr.us-east-1.amazonaws.com/php-base:7.4.16-alpine-no-nginx
#docker pull php:7.4.16-fpm-alpine
#docker pull php:8.1.4RC1-fpm-alpine3.15


# Install base packages
#RUN apk update
#RUN apk upgrade

# Change TimeZone
#RUN apk add --update tzdata
ENV TZ=Europe/Bucharest

#COPY xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY xdebug.ini /etc/php-custom.d/xdebug.ini

CMD cd /var/www
CMD chown -R www-data:www-data management-platform.local/bootstrap
CMD chown -R www-data:www-data management-platform.local/storage
CMD chmod -R ugo+rw management-platform.local/storage
CMD chown -R www-data:www-data platform.loc/var/

WORKDIR /var/www/platform.loc

#RUN composer install -n