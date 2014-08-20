#
# ~/.bash_profile
#

source $HOME/.bashrc
source $HOME/.profile

# set PATH here instead of bashrc so MacVim can find it
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH # extra dirs for node, npm, etc
export PATH=$HOME/bin:$PATH # personal bin
export NODE_PATH=$NODE_PATH:/usr/local/share/npm/lib/node_modules
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export GITHUB_USERNAME="dlimeb"
export HIPCHAT_USERNAME=dlimeb
