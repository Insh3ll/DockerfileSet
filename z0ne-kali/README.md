# 自用Kali镜像

- 在kali的官方镜像上的安装了zsh git-core openssh-server metasploit-framework
- 配置系统语言环境为中文
- 配置shell环境为zsh
- 默认启动ssh服务 端口22
- 默认用户名密码为 root:toor 

## 快速启动
`docker run -d -ti --name kali -v /path/kali:/root z0ne-kali`


## MSF使用
1. 启动postgresql数据库
```
service postgresql start
```

2. 初始化MSF数据库连接
```
msfdb init
```

3. 构建MSF数据库缓存
```
msfconsole
msf >db_db_rebuild_cache
```


