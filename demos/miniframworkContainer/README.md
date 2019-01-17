#### clone miniframewrok
```
cd /var/www && git clone https://github.com/znddzxx112/miniframework.git

```


#### build
```
docker build . -t miniframwork_con_img

```

#### run
```
docker run -d -p 8001:80 -v /var/www/miniframework:/app --name miniframwork_container --privileged --rm miniframwork_con_img
```

#### brower
```
http://127.0.0.1:8001/
```
