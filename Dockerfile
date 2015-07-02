from phusion/baseimage:0.9.16
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN sudo apt-get update -y; \
    sudo apt-get install -y --force-yes --no-install-recommends curl git unzip tree subversion
WORKDIR usr/src/
RUN git clone --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride
RUN cd /usr/src/dockeride; git checkout dev
RUN sudo ln -sf /usr/src/dockeride/.bashrc ~/.bashrc
RUN sudo ln -sf /usr/src/dockeride/.vim ~/.vim
RUN sudo ln -sf /usr/src/dockeride/.vimrc ~/.vimrc

# add CPP env
sudo apt-get install -y --force-yes --no-install-recommends build-essential cmake cmake-curses-gui

# add python env
sudo apt-get install -y --force-yes --no-install-recommends python-software-properties software-properties-common python-dev python-pip
