# 说明
使用docker desktop软件安装docker容器，方便本地调试项目代码，不用打开一堆的控制台或者打开一堆的后台进程。
使用docker desktop软件方便管理docker容器。
> network_mode: "host"  
> 只支持在linux系统下，其他系统若要让docker容器访问到宿主机，需要把localhost配置为：`host.docker.internal`
# 使用方法
分别到各自的`docker-compose.yml`文件目录下执行./start.sh即可安装对应的docker容器