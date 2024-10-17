#
# .zprofile
#
# Sets the environment for login shells. Runs before .zshrc.
#

export PATH="$PATH:/Users/dlimeb/.local/bin"

# Exports a handful of homebrew vars, most importantly adds to $PATH
# See `brew help shellenv`
if [[ -f "/opt/homebrew/bin/brew" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Use the ruby installed by `ruby-install` (which was installed by homebrew)
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.5
