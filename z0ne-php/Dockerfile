FROM debian
MAINTAINER z0ne

ADD ./start.sh /root

RUN apt update && apt-get install -y php php-fpm nginx &&\
    apt-get install -y php-common php-mysql php-cgi php-gd php-mcrypt php-memcache php-imagick php-xmlrpc php-pear php-curl php-dev php-imap php-pspell php-recode php-snmp &&\
    chmod +x /root/start.sh &&\
    rm -f /etc/nginx/sites-enabled/*

ADD ./nginx.conf /etc/nginx/sites-enabled/

CMD [ "/root/start.sh" ]

EXPOSE 80