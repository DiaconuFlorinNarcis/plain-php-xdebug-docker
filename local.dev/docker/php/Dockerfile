FROM php:8.1.4RC1-fpm-alpine3.15
#FROM 243922221670.dkr.ecr.us-east-1.amazonaws.com/php-base:7.4.16-alpine-no-nginx
#docker pull php:7.4.16-fpm-alpine
#docker pull php:8.1.4RC1-fpm-alpine3.15


# Install base packages
RUN apk update
RUN apk upgrade

ENV XDEBUG_VERSION=3.1.3
RUN apk --no-cache add --virtual .build-deps \
        g++ \
        autoconf \
        git \
    	libpng-dev \
        libzip-dev \
        vim \
        curl \
        unzip \
        libsodium-dev \
        libmemcached-dev \
        composer \
        make && \
        pecl install xdebug-${XDEBUG_VERSION} && \
        docker-php-ext-enable xdebug && \
        docker-php-ext-install pdo && \
        docker-php-ext-install pdo_mysql && \
        docker-php-ext-install gd && \
        docker-php-ext-install zip && \
        docker-php-ext-install bcmath && \
        apk del .build-deps && \
        rm -r /tmp/pear/* && \
        rm -rf /var/lib/apt/lists/*

# Change TimeZone
RUN apk add --update tzdata
ENV TZ=Europe/Bucharest

COPY xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
