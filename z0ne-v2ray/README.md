# 自用V2ray镜像

- 原始镜像使用Debian
- 采用[v2ray一键安装脚本](https://github.com/tracyone/v2ray.fun)安装


## 使用
1. ### 快速启动
    `docker run -d -ti --name v2ray --net host z0ne-v2ray`

2. ### 检查运行状态
    `dcocker attach v2ray`
    
    进入容器内，`/root`目录下`config.json`即为客户端配置文件。输入`v2ray`即可配置v2ray服务，开启v2ray服务。(刚启动容器默认是没有启动的)

3. ### 配置
    进入容器内输入`v2ray`即可配置，更改配置后会在`/root`目录下生成新的`config.json`配置文件。



注意：客户端要使用与服务端一致的v2ray版本，否则连接时可能会出现一些奇怪的问题。`/usr/bin/v2ray/v2ray -version`可查看安装的v2ray版本.