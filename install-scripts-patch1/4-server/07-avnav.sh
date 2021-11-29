#!/bin/bash -e


install -o 0 -g 0 -d /usr/lib/avnav/lysmarine
install -o 0 -g 0 -m 0644 $FILE_FOLDER/avnav_server_lysmarine.xml "/usr/lib/avnav/lysmarine/" 

