FROM php:7.2-fpm

RUN docker-php-ext-install pdo pdo_mysql

RUN pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis

USER root

RUN usermod -u 1000 www-data

EXPOSE 9000