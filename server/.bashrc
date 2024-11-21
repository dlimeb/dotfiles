#
#  ~/.bashrc
#
#  Much of this was copied straight from the default .bashrc provided by a
#  fresh Debian install
#
#

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#
# PROMPT
#
# Set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

# Colored prompt, if the terminal has the capability
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

#
# HISTORY
#
# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Don't store these commands in history
HISTIGNORE=ls:la:ll:cd:pwd:clear:su:df

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#
# EXPORTS
#
export EDITOR=$(which vim)
export PAGER=$(which less)

#
# ALIASES
#
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
