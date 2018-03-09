#!/bin/sh

chmod 777 -R /data

# 启动php-fpm
/etc/init.d/php7.0-fpm start

# 前台运行方式启动Nginx
/etc/init.d/nginx stop
nginx -g 'daemon off;'