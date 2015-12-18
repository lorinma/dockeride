from phusion/baseimage
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN apt-get update -y; apt-get install -y --force-yes --fix-missing --no-install-recommends curl git unzip tree subversion vim wget
WORKDIR usr/local/src/
RUN git clone --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride
RUN ln -sf /usr/src/dockeride/.bashrc ~/.bashrc
RUN ln -sf /usr/src/dockeride/.vim ~/.vim
RUN ln -sf /usr/src/dockeride/.vimrc ~/.vimrc

RUN wget –quiet -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh; bash miniconda.sh -b -p $HOME/miniconda;
RUN rm -rf miniconda.sh

# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
