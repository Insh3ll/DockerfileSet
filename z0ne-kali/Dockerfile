FROM debian:8

# 配置镜像源/安装软件
RUN echo "deb http://mirrors.ustc.edu.cn/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list && \
    apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ED444FF07D8D0BF6 && \
    apt-get -yqq update && \
    apt-get -yqq dist-upgrade && \
    apt-get install -y zsh vim git-core net-tools openssh-server && \
    apt-get install -y netcat nmap metasploit-framework && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 配置zsh和ssh
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh && \
    cp /root/.oh-my-zsh/templates/zshrc.zsh-template /root/.zshrc && \
    chsh -s /bin/zsh && \
    mkdir /var/run/sshd && \
    echo "root:toor" | chpasswd && \ 
    sed -i 's/#Port 22/Port 50022/g' /etc/ssh/sshd_config && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
    # SSH login fix. Otherwise user is kicked off after login
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
    # 配置中文环境
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen && \
    sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen && \
    locale-gen

ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN:zh LC_ALL=zh_CN.UTF-8

CMD ["/usr/sbin/sshd", "-D"]
