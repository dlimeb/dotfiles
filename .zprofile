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
