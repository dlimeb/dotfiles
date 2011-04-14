#!/bin/bash

# toggle-hosts.sh -- Enable or disable a list of blacklisted sites from
# redirecting to localhost in /etc/hosts

usage() {
cat <<EOT

Usage:
  `basename $0` surf|work

  This script enables or disables a list of blacklisted sites from redirecting
  to localhost in /etc/hosts.

EOT
exit 1
}

# ensure enough arguments are given
if [ $# -eq 0 ] ; then
    usage
    exit 65
fi

if [ $1 == "surf" ] ; then
    echo "Removing restrictions on blacklisted sites. Enjoy your surfing!"
    sed '1,/START BLACKLIST/!{ /END BLACKLIST/,/START BLACKLIST/!s/^/# /; }' /etc/hosts > /tmp/hosts
    sudo mv /tmp/hosts /etc/hosts
else
    echo "Enabling restrictions on blacklisted sites. Enjoy your productivity!"
    sed '1,/START BLACKLIST/!{ /END BLACKLIST/,/START BLACKLIST/!s/[# ]*//; }' /etc/hosts > /tmp/hosts
    sudo mv /tmp/hosts /etc/hosts
fi
