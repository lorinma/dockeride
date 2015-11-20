from phusion/baseimage
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN apt-get update -y; apt-get install -y --force-yes --fix-missing --no-install-recommends curl git unzip tree subversion vim
WORKDIR usr/local/src/
RUN git clone --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride
RUN ln -sf /usr/src/dockeride/.bashrc ~/.bashrc
RUN ln -sf /usr/src/dockeride/.vim ~/.vim
RUN ln -sf /usr/src/dockeride/.vimrc ~/.vimrc

# #add CPP env
# RUN apt-get install -y --force-yes --fix-missing --no-install-recommends build-essential cmake cmake-curses-gui
# 
# #add python env
# RUN apt-get install -y --force-yes --fix-missing --no-install-recommends python-software-properties software-properties-common python-dev python-pip
# 
# RUN pip install ipdb
