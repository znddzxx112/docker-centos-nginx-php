#### build
```
docker build . -t miniframwork_con_img

```

#### run
```
docker run -d -p 8001:80 -v /var/www/miniframework:/app --name miniframwork_container --privileged --rm miniframwork_con_img
```
