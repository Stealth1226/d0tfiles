#! /bin/bash

for i in $(ls config); do
    rm -rf config/$i
    cp -r ~/.config/$i config/
done
