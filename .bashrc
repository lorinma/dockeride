alias c='clear'
source "/Users/Ling/Projects/dockeride/.bash-git-prompt/gitprompt.sh"
#source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
alias ll='ls -al'
alias gcl='git clone'
alias gal='git add .'
alias gs='git status'
alias gcm='gal; git commit -m'
alias gpush='git push --all origin'

alias pp='cd /Users/Ling/Projects'
# added by Miniconda3 3.10.1 installer
export PATH="/Users/Ling/miniconda3/bin:$PATH"
alias condadev='source activate dev'
# added for boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/Ling/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
alias dockerm='docker rm $(docker ps -a -q)'
alias dockermi='docker rmi $(docker images -q)'
