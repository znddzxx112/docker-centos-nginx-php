#!/bin/sh

docker build centos6_nginx/. -t centos6nginx

docker build centos6_nginx_php/. -t centos6nginxphp

docker build centos6_nginx_php_prod/. -t centos6nginxphpprod

