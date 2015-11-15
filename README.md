# dockeride
My dotfiles in docker image
with vim and bash setup

## instruction:

sudo git clone https://github.com/lorinma/dockeride.git /usr/src/dockeride; 
ln -sf /usr/src/dockeride/.bashrc ~/.bashrc; ln -sf /usr/src/dockeride/.vim ~/.vim; ln -sf /usr/src/dockeride/.vimrc ~/.vimrc

## or use my docker image:

docker run -it lorinma/dockeride bash
