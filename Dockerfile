FROM php:7-fpm-alpine3.7
MAINTAINER Sylvain JACOUTY

RUN docker-php-ext-install gd snmp mcrypt pdo pdo_mysql

EXPOSE 9000
CMD ["php-fpm"]
