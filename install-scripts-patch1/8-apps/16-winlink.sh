#!/bin/bash -e

# See: https://getpat.io/

if [ $LMARCH == 'armhf' ]; then
  wget https://github.com/la5nta/pat/releases/download/v0.12.0/pat_0.12.0_linux_armhf.deb
  dpkg -i pat_0.12.0_linux_armhf.deb && rm pat_0.12.0_linux_armhf.deb
fi
