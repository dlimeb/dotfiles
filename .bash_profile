#
# ~/.bash_profile
#

source $HOME/.bashrc
source $HOME/.profile

# set PATH here instead of bashrc so MacVim can find it
export PATH=/usr/local/sbin:$PATH # for eg rabbitmq
export PATH=$HOME/bin:$PATH # personal bin
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/lib/node
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
