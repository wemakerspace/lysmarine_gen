#!/bin/bash -e

# Openbox
install -o 1000 -g 1000 -d /home/user/.config
install -o 1000 -g 1000 -d /home/user/.config/openbox
install -o 1000 -g 1000 -v $FILE_FOLDER/autostart /home/user/.config/openbox/
