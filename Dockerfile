from phusion/baseimage
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN apt-get update -y; apt-get install -y --force-yes --fix-missing --no-install-recommends curl git unzip tree subversion vim
WORKDIR usr/local/src/
RUN git clone --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride
RUN ln -sf /usr/src/dockeride/.bashrc ~/.bashrc
RUN ln -sf /usr/src/dockeride/.vim ~/.vim
RUN ln -sf /usr/src/dockeride/.vimrc ~/.vimrc

# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
