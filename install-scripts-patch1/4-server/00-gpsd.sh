#!/bin/bash -e

install -d /usr/local/sbin
install -v -m 0755 $FILE_FOLDER/bounce-mux.sh "/usr/local/sbin/bounce-mux"

install -d /usr/local/bin
install -v -m 0755 $FILE_FOLDER/manage_ais.sh "/lib/udev/manage_ais.sh"
install -v -m 0755 $FILE_FOLDER/manage_cp210x.sh "/lib/udev/manage_cp210x.sh"
install -v -m 0755 $FILE_FOLDER/manage_ch340.sh "/lib/udev/manage_ch340.sh"
install -v -m 0755 $FILE_FOLDER/manage_ftdi.sh "/lib/udev/manage_ftdi.sh"
install -v -m 0755 $FILE_FOLDER/manage_shipmodul.sh "/lib/udev/manage_shipmodul.sh"
install -v -m 0755 $FILE_FOLDER/manage_gps.sh "/lib/udev/manage_gps.sh"
install -v -m 0755 $FILE_FOLDER/manage_prolific.sh "/lib/udev/manage_prolific.sh"

install -v -m 0644 $FILE_FOLDER/gpsd.conf "/etc/default/gpsd"
