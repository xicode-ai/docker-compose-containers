#!/usr/bin/env bash

# 下载并启动容器，且为 后台 自动启动
docker-compose -p elasticsearch up -d


# 显示 emqx 容器
docker ps |grep elasticsearch
