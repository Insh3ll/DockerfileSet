# 自用Debian镜像

- 在debian的官方镜像上的安装了sudo vim zsh wget git-core net-tools
- 添加`z0ne`用户
- 修改`root`和`z0ne`用户密码为对应的用户名
- 修改系统语言环境为中文
- 启动默认为`z0ne`用户

## 快速启动
`docker run -d -ti --name containerName z0ne-debian`

