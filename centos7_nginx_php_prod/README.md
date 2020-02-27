##### nginx_php container for produce env
``` bash
docker build . -t centos7nginxphpprod
```

##### start
``` bash
docker run -d --name centos7nginxphpprod_con centos7nginxphpprod
```
