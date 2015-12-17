from quay.io/lorinma/ide:python
MAINTAINER lorinma <malingreal [at] gmail {dot} com>
# WORKDIR usr/local/src/

# add CPP env
RUN apt-get update -y
RUN curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -0 miniconda.sh; bash miniconda.sh -b -p $HOME/miniconda; 
ENV PATH $HOME/miniconda/bin:$PATH
RUN rm -rf miniconda.sh

# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
