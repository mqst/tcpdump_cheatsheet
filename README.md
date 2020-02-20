# tcpdump_cheatsheet
Interesting tcpdump oneliners to capture passwords, usernames, dns traffic, http traffic, and more.

##Monitor HTTP traffic on wlan0
tcpdump -i wlan0 -A port http

##Capture credentials on http
tcpdump -i wlan0 -A port http | egrep -i ‘pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user | uname=  ‘
##Capture credentials on all protocols
tcpdump -i wlan0 -A port port http or port ftp or port smtp or port imap or port pop3 | egrep -i ‘pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user | uname= ‘
