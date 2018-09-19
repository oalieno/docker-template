FROM ubuntu:18.04

WORKDIR /root

# basic setup
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && \
    apt-get install -y \
    sudo \
    git \
    man \
    curl \
    wget \
    build-essential \
    cmake \
    socat \
    hexedit \
    vim \
    zsh \
    tmux \
    gdb \
    strace \
    ltrace \
    sagemath \
    locales \
    ruby-dev \
    dnsutils \
    netcat \
    nmap \
    nasm \
    net-tools \
    libcurl4-gnutls-dev \
    zlib1g-dev libffi-dev libbz2-dev libreadline-dev sqlite3 libsqlite3-dev libssl-dev libncurses5 libncurses5-dev libncursesw5 \
    libgmp-dev libmpfr-dev libmpc-dev \
    && rm -rf /var/lib/apt/lists/*
RUN locale-gen --lang en_US.UTF-8

# use pyenv to install python 2.7.15 & 3.7.0
COPY install-pyenv.sh .
RUN chmod +x ./install-pyenv.sh && \
    sync && \
    ./install-pyenv.sh && \
    rm install-pyenv.sh

# install gdb pwndbg
RUN git clone https://github.com/longld/peda.git && git clone https://github.com/scwuaptx/Pwngdb.git && \
    cp Pwngdb/.gdbinit .

# install oh my zsh
COPY install-zsh.sh .
RUN chmod +x ./install-zsh.sh && \
    sync && \
    ./install-zsh.sh && \
    rm install-zsh.sh
COPY .zshrc .

# install oh my tmux
RUN git clone https://github.com/gpakosz/.tmux.git && \
    ln -s -f .tmux/.tmux.conf
COPY .tmux.conf.local .

# install vim-plug
COPY .vimrc .
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN vim +'PlugInstall --sync' +qa
RUN cd ~/.vim/plugged/youcompleteme && ./install.py

# install python packages ( pwntools, pycrypto, ... )
COPY install-python-packages.sh .
RUN chmod +x ./install-python-packages.sh && \
    sync && \
    ./install-python-packages.sh && \
    rm install-python-packages.sh

# install some tools
COPY install-tools.sh .
RUN chmod +x ./install-tools.sh && \
    sync && \
    ./install-tools.sh && \
    rm install-tools.sh

# snippets
COPY python.snippets .
RUN mkdir -p .vim/my-snippets/UltiSnips && mv python.snippets .vim/my-snippets/UltiSnips
