#!/usr/bin/env bash

# 创建目录
mkdir -p ./log

# 设置目录权限
chmod -R 777 ./log

# 下载并启动容器，且为 后台 自动启动
docker-compose -p emqx up -d


# 显示 emqx 容器
docker ps |grep emqx
