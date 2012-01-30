#
# ~/.bash_profile
#

source $HOME/.bashrc
source $HOME/.profile

# set PATH here instead of bashrc so MacVim can find it
export PATH=/usr/local/sbin:$PATH # for eg rabbitmq
export PATH=$HOME/bin:$PATH # personal bin
export PATH=/usr/local/Cellar/ruby/1.9.2-p180/bin:$PATH # for ruby
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/lib/node
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
