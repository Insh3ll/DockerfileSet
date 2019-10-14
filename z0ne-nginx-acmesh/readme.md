# nginx-acmesh

> 基于 `nginx:alpine` 和 `acme.sh` 构建的镜像，方便 SSL 证书自动签发和部署


## 0x00 启动

```
docker run -d --name proxy \
-v /path/nginx/conf.d:/app/conf.d \
-v /path/sitessl:/app/sitessl \
-p 80:80 -p 443:443 \
-e CF_Key="ckckck" -e CF_Email="didkdk" \
nginx-acmesh
```
> `/app/conf.d` 目录为 nginx 站点配置目录，需根据需求自己编写  
> `/app/sitessl` 目录为 nginx 证书存储目录
> `CF_Key` 和 `CF_Email` 为 `acme.sh` dnsapi登陆凭据，此处为`cloudflare`的配置参数，其它dns服务商的配置参数可参考 [dnsapi](https://github.com/Neilpang/acme.sh/wiki/dnsapi)

## 0x01 申请证书

进入容器内执行如下命令：
```
acme.sh --issue --dns dns_cf -d example.com -d www.example.com -k ec-256 \
--renew-hook "acme.sh --install-cert -d example.com --ecc \
--key-file       $SITESSL/key.pem \
--fullchain-file $SITESSL/cert.pem \
--reloadcmd      \"nginx -s reload\""
```