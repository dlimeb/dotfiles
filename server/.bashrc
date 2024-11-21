#
#  ~/.bashrc
#

#
# Exports
#
export EDITOR=$(which vim)
export PAGER=$(which less)
export HISTCONTROL=ignoreboth
export HISTIGNORE=ls:la:ll:cd:pwd:clear:su:df

#
# Aliases
#
# Directory traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias d='dirs -v | head -n 10'

# ls
alias ls='ls --color'
alias l='ls -lFh'      # size, show type, human readable
alias ll='ls -lh'      # long list, human readable
alias la='ls -lAFh'    # long list, show almost all, show type, human readable
alias ldot='ls -ld .*' # show dotfiles
alias lsn='ls -1'      # a column contains name of files and directories

# grep
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

# head / tail
alias t='tail -f'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

# du
alias du='du -kh'
alias dud='du -d 1 -h'
alias duf='du -sh *'

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# misc
alias c='clear'
alias df='df -kTh'
alias h='history'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
