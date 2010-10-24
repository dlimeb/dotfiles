#!/bin/bash
#
# iSight Auto Upload Script - by Dylan O'Donnell 2006 
# http://www.deography.com/record/ 
####################################################

# Generate filename based on date stamp
date=$(date +%m%d%y%H%M%S).jpg;

# Take iSight Photo and store with datestamp filename
/Users/dlimeb/bin/isightcapture -w 400 -h 300 -t jpg /Users/dlimeb/Pictures/isight_tmp/$date;

# Generate semaphore for connectivity by pinging server
isconnected=$(/sbin/ping -c 1 <your_server> | grep 64 | wc | awk '{print $1}');

# If connected...
if [ "$isconnected" ]; then 

# Make .netrc FTP session commands on the fly
cat > ~/.netrc <<-EOF
        machine <your_server>
        login <your_user>
        password <your_password>
        macdef init
        lcd /Users/dlimeb/Pictures/isight_tmp/
        cd public_html/cam
        passive
        prompt
        restrict
        type binary
        prompt
        mput *.jpg
        quit

EOF

# Run FTP session to put JPGs in webspace, then delete from /tmp
chmod 600 ~/.netrc
ftp -i <your_server>
rm /Users/dlimeb/Pictures/isight_tmp/*.jpg

else 
        # If not connected.. leave captures there until next time. 
        echo "No Connection, image not transferred or deleted.";
fi
