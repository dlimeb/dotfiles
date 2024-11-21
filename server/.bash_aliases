#
# ~/.bash_aliases
#

# Directory traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias d='dirs -v | head -n 10'

# ls
alias ls='ls --color=auto'
alias l='ls -lFh'      # size, show type, human readable
alias ll='ls -lh'      # long list, human readable
alias la='ls -lAFh'    # long list, show almost all, show type, human readable
alias ldot='ls -ld .*' # show dotfiles
alias lsn='ls -1'      # a column contains name of files and directories

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

# head / tail
alias t='tail -f'
alias H='| head'
alias T='| tail'
alias G='| grep'
alias L="| less"
alias M="| most"
alias LL="2>&1 | less"
alias CA="2>&1 | cat -A"
alias NE="2> /dev/null"
alias NUL="> /dev/null 2>&1"
alias P="2>&1| pygmentize -l pytb"

# du
alias du='du -kh'
alias dud='du -d 1 -h'
alias duf='du -sh *'

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Misc
alias c='clear'
alias df='df -kTh'
alias h='history'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
