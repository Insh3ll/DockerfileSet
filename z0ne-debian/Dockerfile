FROM debian

RUN sed -i "s/deb.debian.org/mirrors.ustc.edu.cn/g" /etc/apt/sources.list && \
    apt-get -y update && \
    apt-get -y dist-upgrade && \
    # 安装基础软件
    apt-get install -y sudo vim zsh wget git net-tools locales && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    # 配置z0ne账户
    useradd -m z0ne && \
    sed -i '/root	ALL=(ALL:ALL) ALL/a\z0ne	ALL=(ALL:ALL) ALL' /etc/sudoers && \
    echo "root:toor" | chpasswd && \
    echo "z0ne:z0ne" | chpasswd && \
    # 配置zsh
    git clone https://github.com/robbyrussell/oh-my-zsh.git /home/z0ne/.oh-my-zsh && \
    cp /home/z0ne/.oh-my-zsh/templates/zshrc.zsh-template /home/z0ne/.zshrc && \
    chsh -s /bin/zsh && \
    # 配置中文环境
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen && \
    sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen && \
    locale-gen

ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN:zh LC_ALL=zh_CN.UTF-8

USER z0ne