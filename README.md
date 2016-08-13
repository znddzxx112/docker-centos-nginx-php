# docker-centos-nginx-php
dockerfile centos:latest, include nginx，php，php-fpm

#### run 
```
$ sudo docker run -d -v $pwd:/app -p 80:80 centos7-nginx-php-from-file /etc/rc.local
```
$pwd : php code pwd
