#!/bin/sh

docker build ubuntu1804_nginx/. -t ubuntu1804nginx

docker build ubuntu1804_nginx_php/. -t ubuntu1804nginxphp

docker build ubuntu1804_nginx_php_prod/. -t ubuntu1804nginxphpprod

