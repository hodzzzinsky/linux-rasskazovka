#!/bin/sh

I=1000

while [ $I -le 100099 ]; do
    printf "%x\n" "$I"
    I=$(( I + 1001 ))
done
