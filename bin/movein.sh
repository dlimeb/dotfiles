#!/bin/bash
#
# movein -- Copies various configuration files to specified remote server(s).
# Modified slightly from O'Reilly's "Linux Server Hacks" by Rob Flickenger
# http://oreilly.com/pub/h/72

usage() { 
cat <<EOT

Usage:
  `basename $0` host [host2, host3...]

  This script copies configuration files from the local machine to one
  or more specified remote hosts. 

EOT
exit 1
}

# ensure enough arguments are given
if [ $# -eq 0 ] ; then 
    usage
    exit 65
fi	

cd /Users/dlimeb/Development/personal/dotfiles/skel/

echo "This script will now copy your dotfiles to the remote hosts."
echo "WARNING: Remote files will be overwritten!"
echo -n "Proceed? [y/N] "

read continue

if [ "$continue" == "y" ] ; then
	for host in $@ ; do 
		echo "Copying files to $host..."
        tar zhcf - . | ssh $host "tar zpvxf -"
	done	
else
	echo "Aborting."
fi	
