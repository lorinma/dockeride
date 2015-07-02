from phusion/baseimage:0.9.16
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
RUN apt-get update -y; \
    apt-get install -y --force-yes --no-install-recommends curl git 
WORKDIR usr/src/
#RUN git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt
#RUN cd ~./bash-git-prompt; git checkout 2.3.4

