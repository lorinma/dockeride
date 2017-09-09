# dockeride
[![Docker Repository on Quay](https://quay.io/repository/lorinma/ide/status "Docker Repository on
Quay")](https://quay.io/repository/lorinma/ide)

My dotfiles in docker image
with vim and bash setup in Ubuntu

## instruction:

sudo git clone -b ubuntu --recursive https://github.com/lorinma/dockeride.git /usr/src/dockeride; ln -sf /usr/src/dockeride/.bashrc ~/.bashrc; ln -sf /usr/src/dockeride/.vim ~/.vim; ln -sf /usr/src/dockeride/.vimrc ~/.vimrc; wget –quiet -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh; bash miniconda.sh -b -p $HOME/miniconda; rm -rf miniconda.sh; source ~/.bashrc;

## or use my docker image:

docker run -it quay.io/lorinma/ide bash
