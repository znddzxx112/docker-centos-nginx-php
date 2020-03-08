#!/bin/sh

groupadd nginx && useradd nginx -s /sbin/nologin -g nginx -M
ln -s /usr/local/php7/bin/php /usr/local/bin/

# 安装git,vim
apt-get install -y git vim

# 安装composer
cd /usr/local/bin 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
# 设置软连接
ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
# composer使用阿里源
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
# 取消
#composer config -g --unset repos.packagist

# 安装grpc.so
apt-get install -y autoconf zlib1g-dev protobuf-compiler-grpc
/usr/local/php7/bin/pecl install /usr/local/src/grpc-1.28.0RC1.tgz
echo "extension=grpc.so" >>  /usr/local/php7/lib/php.ini 
