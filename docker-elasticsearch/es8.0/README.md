# 生成证书（如果您开启了 SSL）：

```
docker exec -it es-node-1 /usr/share/elasticsearch/bin/elasticsearch-certutil cert -out /usr/share/elasticsearch/config/certs/elastic-certificates.p12 -pass ""
```

# 设置内置用户的密码（如果您没有通过环境变量设置）：
````
docker exec -it es-node-1 /usr/share/elasticsearch/bin/elasticsearch-setup-passwords auto
````
# 或者手动设置：
````
docker exec -it es-node-1 /usr/share/elasticsearch/bin/elasticsearch-setup-passwords interactive
````

# 首先创建 keystore
````
docker exec -it es-node-1 /usr/share/elasticsearch/bin/elasticsearch-keystore create
````
# 添加 bootstrap.password 到 keystore
````
docker exec -it es-node-1 /usr/share/elasticsearch/bin/elasticsearch-keystore add bootstrap.password
````
# 系统会提示您输入密码，这个过程不会显示在终端上，更加安全

# 重启 Elasticsearch 使配置生效
````
docker restart es-node-1
````