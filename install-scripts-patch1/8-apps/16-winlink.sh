#!/bin/bash -e

# See: https://getpat.io/

if [ $LMARCH == 'armhf' ]; then
  wget https://github.com/la5nta/pat/releases/download/v0.12.0/pat_0.12.0_linux_armhf.deb
  dpkg -i pat_0.12.0_linux_armhf.deb && rm pat_0.12.0_linux_armhf.deb

  # See: https://www.cantab.net/users/john.wiseman/Documents/ARDOPC.html
  wget -O ardopc http://www.cantab.net/users/john.wiseman/Downloads/Beta/piardopc
  install ardopc /usr/local/bin && rm ardopc
  if [ "$(grep 'pcm\.ARDOP' /home/user/.asoundrc |wc -l)" -lt "1" ]; then
    echo 'pcm.ARDOP {type rate slave {pcm "hw:CARD=CODEC,DEV=0" rate 48000}}' >> /home/user/.asoundrc
  fi
  /home/user/add-ons/winlink-pat-install.sh
fi
