#!/bin/bash

apt-get install -y make gcc g++
apt-get install -y build-essential libexpat1-dev libgeoip-dev libpng-dev libpcre3-dev libssl-dev libxml2-dev rcs zlib1g-dev libmcrypt-dev libcurl4-openssl-dev libjpeg-dev libpng-dev libwebp-dev pkg-config
apt-get install -y libcurl4-openssl-dev libgd-dev libwebp-dev libpng++-dev libfreetype6-dev libghc-zlib-dev libmcrypt-dev libxml++2.6-dev libssl-dev libbz2-dev libxslt1-dev libxml2-dev libfreetype6-dev libxslt1-dev

#curl -sSL -o /usr/local/src/php-7.1.20.tar.gz http://cn2.php.net/get/php-7.1.20.tar.gz/from/this/mirror && \
groupadd fpm && useradd fpm -s /sbin/nologin -g fpm -M && \
tar -zxvf /usr/local/src/php-7.2.28.tar.gz -C /usr/local/src/ && \
cd /usr/local/src/php-7.2.28 && \
mkdir /usr/local/php7 && \
./configure \
-prefix=/usr/local/php7 \
-with-curl \
--with-fpm-user=fpm \
--with-fpm-group=fpm \
--with-freetype-dir \
--with-gd \
--with-gettext \
--with-iconv-dir \
--with-kerberos \
--with-libdir=lib64 \
--with-libxml-dir \
--with-mysqli \
--with-openssl \
--with-pcre-regex \
--with-pdo-mysql \
--with-pdo-sqlite \
--with-pear \
--with-png-dir \
--with-xmlrpc \
--with-xsl \
--with-zlib \
--enable-fpm \
--enable-bcmath \
--enable-libmxl \
--enable-inline-optimization \
--enable-gd-native-ttf \
--enable-mbregex \
--enable-mbstring \
--enable-opcache \
--enable-pcntl \
--enable-shmop \
--enable-soap \
--enable-sockets \
--enable-sysvsem \
--enable-xml \
--enable-zip \
--disable-fileinfo && make && make install

cp /usr/local/src/php-7.2.28/php.ini-production /usr/local/php7/lib/php.ini
cp /usr/local/php7/etc/php-fpm.conf.default /usr/local/php7/etc/php-fpm.conf
cp /usr/local/php7/etc/php-fpm.d/www.conf.default /usr/local/php7/etc/php-fpm.d/www.conf
