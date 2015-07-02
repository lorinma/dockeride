from phusion/baseimage:0.9.16
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN apt-get update -y; \
    apt-get install -y --force-yes --no-install-recommends curl git 
WORKDIR usr/src/
RUN git clone --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride
RUN ln -sf /usr/src/dockeride/.bashrc ~/.bashrc
RUN ln -sf /usr/src/dockeride/.vim ~/.vim
RUN ln -sf /usr/src/dockeride/.vimrc ~/.vimrc
#RUN source /usr/src/dockeride/.bashrc
#RUN source /usr/src/dockeride/.vim
#RUN source /usr/src/dockeride/.vimrc

