from quay.io/lorinma/dockeride:python
MAINTAINER Ling Ma <malingreal@gmail.com>
# WORKDIR usr/local/src/

RUN wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O ~/miniconda.sh;
RUN bash ~/miniconda.sh -b -p $HOME/miniconda; 
RUN rm -rf ~/miniconda.sh; 
ENV PATH="$HOME/miniconda/bin:$PATH"
