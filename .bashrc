#
#  ~/.bashrc
#

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Use vi keybindings
#set -o vi

# Perms & env vars
umask 022 # -rw-r--r--

export EDITOR='/usr/bin/vim'
export PAGER='/usr/bin/less'
export HISTCONTROL=ignoreboth
export HISTIGNORE=ls:la:ll:cd:pwd:clear:su:df
export SSHPROXY_USER="dlimeback"
export PATH=/home/dlimeb/bin:$PATH # personal bin
#export PATH=/usr/local/share/npm/bin:$PATH # npm
#export NODE_PATH="/usr/local/lib/node" # node path (so you can just require packages without specifying path)
export TERM=xterm-256color

# Don't need to check mail
unset MAILCHECK

# Aliases
source $HOME/.bash/aliases

# Git completion
source $HOME/bin/git-completion

# autojump
source $HOME/bin/autojump.bash

# Virtualenvwrapper
export WORKON_HOME=$HOME/Development/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Set up colors as names
export WHITE='\e[1;37m'
export BLACK='\e[0;30m'
export BLUE='\e[0;34m'
export LIGHT_BLUE='\e[1;34m'
export GREEN='\e[0;32m'
export LIGHT_GREEN='\e[1;32m'
export CYAN='\e[0;36m'
export LIGHT_CYAN='\e[1;36m'
export RED='\e[0;31m'
export LIGHT_RED='\e[1;31m'
export PURPLE='\e[0;35m'
export LIGHT_PURPLE='\e[1;35m'
export BROWN='\e[0;33m'
export YELLOW='\e[1;33m'
export GRAY='\e[1;30m'
export LIGHT_GRAY='\e[0;37m'
export NO_COLOR='\e[0m'

# Prompt.
# Make the hostname a different color depending on whether this is a
# local or remote connection.
export SSH_CLIENT=${SSH_CLIENT}
if [ -n "$SSH_CLIENT" ] ; then # remote
    export PS1='\[\033[01;32m\]\u@\[\033[1;33m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
else # local
    #export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
    export PS1="\[${LIGHT_GREEN}\]\u@\h:\[${LIGHT_BLUE}\]\W\[${NO_COLOR}\]\$ "
fi

# Plain white, but it works
#export PS1='\u@\h:[\W]\$ '
# With named color vars. This requires the usage of "
#export PS1="\[${LIGHT_GREEN}\]\u@\h:\[${LIGHT_BLUE}\]\W\[${NO_COLOR}\]\$ "
# With verbose escape codes
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
