FROM debian

RUN sed -i "s/deb.debian.org/mirrors.ustc.edu.cn/g" /etc/apt/sources.list && \
    apt-get -yqq update && \
    apt-get -yqq dist-upgrade && \
    # 安装基础软件
    apt-get install -y openssh-server locales && \
    apt-get install -y zsh vim git-core net-tools curl && \
    # 清理缓存
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    # 配置root用户zsh
    git clone https://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh && \
    cp /root/.oh-my-zsh/templates/zshrc.zsh-template /root/.zshrc && \
    chsh -s /bin/zsh && \
    # 配置ssh-server
    mkdir /var/run/sshd && \
    sed -i 's/#Port 22/Port 50022/g' /etc/ssh/sshd_config && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
    sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config && \
    # SSH login fix. Otherwise user is kicked off after login
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
    # 配置中文环境
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen && \
    sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen && \
    locale-gen && \
    # 配置root用户密码
    echo "root:changeth1sp@ssw0rd" | chpasswd 

ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN:zh LC_ALL=zh_CN.UTF-8

CMD ["/usr/sbin/sshd", "-D"]
