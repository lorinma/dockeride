from quay.io/lorinma/dockeride:base
MAINTAINER Ling Ma <malingreal@gmail.com>
# WORKDIR usr/local/src/

#add python env
RUN apt-get install -y --force-yes --fix-missing --no-install-recommends python-software-properties software-properties-common python-dev python-pip
RUN pip install ipdb

# #add CPP env
# RUN apt-get install -y --force-yes --fix-missing --no-install-recommends build-essential cmake cmake-curses-gui
 
# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
