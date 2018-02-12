FROM debian
MAINTAINER z0ne

RUN apt-get update && apt-get install -y sudo locales vim wget curl git \
    && useradd --shell /bin/bash z0ne \
    && mkdir /home/z0ne \
    && chown z0ne:z0ne /home/z0ne -R \
    && sed -i '/root	ALL=(ALL:ALL) ALL/a\z0ne	ALL=(ALL:ALL) ALL' /etc/sudoers \
    && echo "root:root" | chpasswd && echo "z0ne:z0ne" | chpasswd \
    && sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
    && sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen \
    && sed -i '$a\LANG="zh_CN.UTF-8"' /etc/environment && sed -i '$a\LANGUAGE="zh_CN:zh"' /etc/environment 

ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN:zh LC_ALL=zh_CN.UTF-8

USER z0ne