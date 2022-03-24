#! /bin/bash

# Configs
for i in $(ls config); do
    rm -rf config/$i
    cp -r ~/.config/$i config/
done

# Installed packages
pacman -Qe | awk '{ print $1 }' | tee packages.txt >/dev/null
