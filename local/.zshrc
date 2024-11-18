#
# .zshrc
#
# Sets the environment for interactive shells. Runs after .zprofile and likely
# depends on settings there (eg $PATH).
#


# ---- PLUGINS ----
# Using Zinit to manage -- https://github.com/zdharma-continuum/zinit

# Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source and load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Initialize oh-my-posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/dlimeb.yaml)"
fi

# Add colour to commands
zinit light zsh-users/zsh-syntax-highlighting

# Hit tab to suggest/complete commands
# See https://github.com/zsh-users/zsh-completions for which tools are supported
zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

# Suggest completions for commands based on zsh history
# ^f to accept a suggestion (via emacs keybindings). See
# https://github.com/zsh-users/zsh-autosuggestions for various controls that can
# be mapped to keybindings
zinit light zsh-users/zsh-autosuggestions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # make case insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # show colour as in `ls`


# ---- HISTORY ----
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# ---- KEYBINDINGS ----
# Emacs mode:
# ^b/f -- move backward/forward (forward also accepts suggestion)
# ^a/e -- jump to beginning/end
# ^p/n -- scroll through command history
# ^h   -- delete backwards
bindkey -e
# Fix scrolling through history if a command is partially entered
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


# ---- EXPORTS ----
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# ---- OPTIONS ----
# Manage the stack of directories used with `cd`
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


# ---- ALIASES ----
# Vim, Python
alias vim='nvim'
alias vimdiff='nvim -d'
alias python='python3'

# Directory traversal
alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -- -='cd -'
alias d='dirs -v | head -n 10'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# ls
alias ls='ls --color'
alias l='ls -lFh'      # size, show type, human readable
alias ll='ls -lh'      # long list, human readable
alias la='ls -lAFh'    # long list, show almost all, show type, human readable
alias ldot='ls -ld .*' # show dotfiles
alias lsn='ls -1'      # a column contains name of files and directories

# git -- see ~/.gitconfig

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
alias dud='du -d 1 -h'
alias duf='du -sh *'

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# misc
alias c='clear'
alias h='history'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Shortcuts
alias sz='source ~/.zshrc;echo ".zshrc sourced."'
alias ez='vim ~/.zshrc'
alias serve="python3 -m http.server"
VAULT="/Users/dlimeb/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/dlimeb/"
alias vault="cd ${VAULT}"

# Source local zshrc file
ZSHRC_LOCAL="${HOME}/.zshrc.local"
source "${ZSHRC_LOCAL}"
