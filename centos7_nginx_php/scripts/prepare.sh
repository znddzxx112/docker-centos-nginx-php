#!/bin/bash


yum -y install make gcc gcc-c++ pcre openssl openssl-devel zlib unzip cmake ncurses-devel libmcrypt libmcrypt-devel libjpeg libjpeg-devel libpng curl-devel libxslt-devel libpng-devel freetype freetype-devel libxml2 libxml2-devel pcre-devel

#curl -sSL -o /usr/local/src/php-7.1.20.tar.gz http://cn2.php.net/get/php-7.1.20.tar.gz/from/this/mirror && \
groupadd fpm && useradd fpm -s /sbin/nologin -g fpm -M && \
tar -zxvf /usr/local/src/php-7.1.20.tar.gz -C /usr/local/src/ && \
cd /usr/local/src/php-7.1.20 && \
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
--enable-zip && make && make install

cp /usr/local/src/php-7.1.20/php.ini-production /usr/local/php7/lib/php.ini
cp /usr/local/php7/etc/php-fpm.conf.default /usr/local/php7/etc/php-fpm.conf
cp /usr/local/php7/etc/php-fpm.d/www.conf.default /usr/local/php7/etc/php-fpm.d/www.conf
