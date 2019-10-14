FROM nginx:alpine
LABEL maintainer="z0ne"

ENV DIRECTORY=/app
ENV NGINXCONFD=$DIRECTORY/conf.d
ENV SITESSL=$DIRECTORY/sitessl
ENV LE_WORKING_DIR=$DIRECTORY/acme.sh
ENV LE_CONFIG_HOME=$DIRECTORY/acmecerts

RUN mkdir $DIRECTORY $SITESSL $NGINXCONFD  && \
    apk update && apk add ca-certificates curl openssl socat && update-ca-certificates && rm -rf /var/cache/apk/* && \
    curl https://get.acme.sh | sh && ln -s $LE_WORKING_DIR/acme.sh /usr/bin/acme.sh && $LE_WORKING_DIR/acme.sh --upgrade --auto-upgrade && \
    cp /etc/nginx/conf.d/default.conf $NGINXCONFD/ && sed -i "s#/etc/nginx/conf.d#$NGINXCONFD#g" /etc/nginx/nginx.conf
