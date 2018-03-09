# 自用PHP-Nginx镜像


## 快速启动
1. 启动Mysql(可选)

    `docker run -d  --name mysqltemp -e MYSQL_ROOT_PASSWORD=root -e MYSQL_ROOT_HOST=% mysql`

2. 启动php-nginx

    `docker run -d -ti --name php -p 9090:80 -v /tmp/phpsrc:/data --link mysqltemp:dbhost z0ne-php-nginx`

    此处`-v /tmp/php:/data`目的路径必须`/data`

3. 容器里Web应用访问mysql时数据库地址填`dbhost`即可