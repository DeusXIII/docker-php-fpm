FROM php:fpm-alpine
MAINTAINER Sylvain JACOUTY

RUN docker-php-ext-install gd snmp mcrypt pdo pdo_mysql

EXPOSE 9000
CMD ["php-fpm"]
