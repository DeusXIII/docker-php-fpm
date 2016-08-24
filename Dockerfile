FROM debian
MAINTAINER Sylvain JACOUTY

#Installation de PHP5-FPM
RUN apt-get update && apt-get -y install php5-fpm \
	&& rm -rf /var/lib/apt/lists/*

#Installation des modules PHP
RUN apt-get update && apt-get -y install \
	php5-xdebug \
	php5-snmp \
	php5-gd \
	php5-mysql \
	php5-mcrypt \
	php-pear \
	php5-ssh2 \
	&& rm -rf /var/lib/apt/lists/*
		
EXPOSE 9000
	
CMD ["php5-fpm", "-F"]
