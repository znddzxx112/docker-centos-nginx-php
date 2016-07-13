# docker-centos-nginx-php
dockerfile 基础镜像centos:latest,包含nginx，php，php-fpm

### 运行容器
```
$ sudo docker run -d -v $pwd:/app -p 80:80 centos7-nginx-php-from-file /etc/rc.local
```
$pwd 代码位置
