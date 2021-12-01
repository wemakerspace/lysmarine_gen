#!/bin/bash -e

install -v -o pypilot -g pypilot -m 0644 $FILE_FOLDER/blacklist_serial_ports "/home/pypilot/.pypilot/"

cp $FILE_FOLDER/wind.py "$(find /usr/local/lib -name wind.py)"
