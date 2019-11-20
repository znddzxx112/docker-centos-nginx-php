#!/bin/sh

docker build centos7_nginx/. -t centos7nginx

docker build centos7_nginx_php/. -t centos7nginxphp

docker build centos7_nginx_php_prod/. -t centos7nginxphpprod

