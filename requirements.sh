#!/bin/bash

found_exe() {
    hash "$1" 2>/dev/null
}

# On a Mark 1 the installation process is often running under a limited
# user named 'mycroft'.  So avoid apt-get for installing packages.

# polkit uses pkcon instead of apt-get; pkcon will then run apt-get
if found_exe pkcon; then
    pkcon install pianobar -y
fi

exit 0
