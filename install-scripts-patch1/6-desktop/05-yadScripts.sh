#!/bin/bash -e

install -d '/usr/local/share/applications'
install -m 755 $FILE_FOLDER/servicedialog.sh "/usr/local/bin/servicedialog"
