#
# Bash aliases
#

alias cp='cp -i'
alias mv='mv -i'
#alias rm='rm -i'
alias h='history'
alias du='du -kh'
alias df='df -kTh'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias nup='ping -c 1 google.ca'
alias finder='/System/Library/CoreServices/Finder.app/Contents/MacOS/Finder &'
alias ch='open -a "Google Chrome"';
alias ff='open -a Firefox';
alias saf='open -a Safari';
alias serve='python -m SimpleHTTPServer 8080'
alias fm='fakemail.py --host=localhost --port=10025 --path=/Users/dlimeb/Desktop'
alias serveemail='python -m smtpd -n -c DebuggingServer localhost:1025'
alias j='jekyll'
alias gi='git'
alias v='vagrant'
alias vm="cd ~/waveapps && vagrant ssh"


# colourized ls
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'            # colourized output TODO linux needs --color
alias la='ls -Al'			# show hidden files
alias ll='ls -lh'			# plain long ls
alias lx='ls -lXB'			# sort by extension
alias lk='ls -lSr'			# sort by size
alias lt='ls -ltr'			# sort by date
alias lc='ls -lcr'			# sort by change time
alias lr='ls -lR'			# recursive list


# recursively delete files in current dir with a given extension
function del {
    find . -name "*.$1" -exec rm -rfv {} \;
}

# open a manpage in Preview
function pman() {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

# quick domain availability check
function avail() {
    whois $1 | grep -q 'No match' && echo "Yes" || echo "No"
}

# quick, what's my local IP address
function ip() {
    ifconfig | grep 'inet 192.168' | awk '{print $2}'
}

# generate a data URI for an image file
function datauri() {
  uuencode -m ${1} foo
}

# keep local gif repository in sync with dlmb.co
function heh() {
    rsync -av -e "ssh -p 2200" ~/Development/repos/heh/ digitalocean:~/public_html/dlmb.co/
}
