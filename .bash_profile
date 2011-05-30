#
# ~/.bash_profile
#

source $HOME/.bashrc
source $HOME/.profile

# set PATH here instead of bashrc so MacVim can find it
export PATH=/usr/local/sbin:$PATH # for eg rabbitmq
export PATH=$HOME/bin:$PATH # personal bin
export PATH=$HOME/local/bin:$HOME/node_modules/.bin:$PATH # for node and npm
