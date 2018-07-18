# 自用Kali镜像

- ~~基于kali官方镜像~~ 基于`debian:8`镜像(镜像体积更小)
- 安装了zsh vim git-core net-tools openssh-server metasploit-framework
- 配置系统语言环境为中文
- 配置shell环境为zsh
- 默认启动ssh服务 端口50022
- 默认用户名密码为 root:toor 

## 快速启动
`docker run -d --name kali -v /path/kali:/mnt z0ne-kali`


## MSF使用
1. 启动postgresql数据库
```
/etc/init.d/postgresql start
```

2. 初始化MSF数据库连接
```
msfdb init
```

3. 构建MSF数据库缓存
```
msfconsole
msf >db_rebuild_cache
```


