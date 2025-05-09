#
# .zshrc
#
# Sets the environment for interactive shells. Runs after .zprofile and likely
# depends on settings there (eg $PATH).
#


#
# PLUGINS
#
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


#
# HISTORY
#
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


#
# KEYBINDINGS
#
# Emacs mode:
# ^b/f -- move backward/forward
# ^a/e -- jump to beginning/end
# ^p/n -- scroll through command history
# ^h   -- delete backwards
bindkey -e
# Fix scrolling through history if a command is partially entered
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


#
# EXPORTS
#
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


#
# OPTIONS
#
# Manage the stack of directories used with `cd`
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


#
# ALIASES
#
if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi


#
# NODE / NVM
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
