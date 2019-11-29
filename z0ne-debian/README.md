# 自用Kali镜像

- 基于`debian`镜像
- 安装软件: `openssh-server locales zsh vim git-core net-tools curl`
- 配置root用户shell环境为zsh
- 配置系统语言环境为中文
- 默认启动ssh服务 监听端口`50022` 允许root密码登录 允许公钥方式登录 
- root用户密码为`changeth1sp@ssw0rd` 使用时需修改


## 快速启动
`docker run -d --name name -p 50022:50022 -v /path:/mnt z0ne/z0ne-debian`

